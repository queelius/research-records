import Mathlib

namespace InfoRelaxTS.Monotone

open MeasureTheory ProbabilityTheory

variable {K : ℕ} {Θ Y : Type*} [MeasurableSpace Θ] [MeasurableSpace Y]

/-- The outcome `ω = (θ, (R_{a,n}))` of (4): for each arm `a` (0-based), its parameter `θ_a` and its
reward sequence; the paper's `R_{a,n}` is `(ω a).2 (n - 1)`. -/
abbrev Outcome (K : ℕ) (Θ : Type*) : Type _ := Fin K → Θ × (ℕ → ℝ)

/-- Conditional mean reward `μ_a(θ_a) = 𝔼[R_{a,n} | θ_a]`, (9). -/
noncomputable def mu (R : Fin K → Kernel Θ ℝ) (a : Fin K) (θ : Θ) : ℝ :=
  ∫ r, r ∂(R a θ)

/-- Predictive mean reward `μ̄_a(y_a) = 𝔼_{y_a}[μ_a(θ_a)]`, (9). -/
noncomputable def muBar (R : Fin K → Kernel Θ ℝ) (P : Fin K → Kernel Y Θ) (a : Fin K) (ya : Y) : ℝ :=
  ∫ θ, mu R a θ ∂(P a ya)

/-- Predictive law of the next reward of arm `a` under the belief `ya`: `θ_a ∼ 𝒫_a(y_a)`, then
`R ∼ 𝓡_a(θ_a)`. -/
noncomputable def pred (R : Fin K → Kernel Θ ℝ) (P : Fin K → Kernel Y Θ) (a : Fin K) (ya : Y) :
    Measure ℝ :=
  (R a) ∘ₘ (P a ya)

/-- The belief of arm `a` after its first `n` rewards (8): `yseq a 0 ω = y_a` and
`yseq a (n+1) ω = 𝒰_a(yseq a n ω, R_{a,n+1})`. -/
def yseq (U : Fin K → Y → ℝ → Y) (y : Fin K → Y) (a : Fin K) : ℕ → Outcome K Θ → Y
  | 0, _ => y a
  | n + 1, ω => U a (yseq U y a n ω) ((ω a).2 n)

/-- Posterior predictive mean `μ̂_{a,n}(ω; y_a)` of (10), in its conjugate-prior (pathwise) version:
the predictive mean under the belief reached after the first `n` rewards of arm `a`. -/
noncomputable def muHat (R : Fin K → Kernel Θ ℝ) (P : Fin K → Kernel Y Θ) (U : Fin K → Y → ℝ → Y)
    (y : Fin K → Y) (a : Fin K) (n : ℕ) (ω : Outcome K Θ) : ℝ :=
  muBar R P a (yseq U y a n ω)

/-- `S_a(n) = Σ_{i=1}^{n} μ̂_{a,i-1}`, (151): the cumulative payoff of the first `n` pulls of arm `a`. -/
noncomputable def S (R : Fin K → Kernel Θ ℝ) (P : Fin K → Kernel Y Θ) (U : Fin K → Y → ℝ → Y)
    (y : Fin K → Y) (a : Fin K) (n : ℕ) (ω : Outcome K Θ) : ℝ :=
  ∑ i ∈ Finset.range n, muHat R P U y a i ω

/-- The outcome law `ℐ(y)` of (4): arms independent; for arm `a`, `θ_a ∼ 𝒫_a(y_a)` and, given `θ_a`,
the rewards are i.i.d. `𝓡_a(θ_a)`. -/
noncomputable def I (R : Fin K → Kernel Θ ℝ) [∀ a, IsMarkovKernel (R a)] (P : Fin K → Kernel Y Θ)
    (y : Fin K → Y) : Measure (Outcome K Θ) :=
  Measure.pi fun a =>
    (P a (y a)).bind fun θ => (Measure.dirac θ).prod (Measure.infinitePi fun _ : ℕ => R a θ)

/-- The prior law of the parameter vector `θ ∼ 𝒫(y)`, (2), arms independent. -/
noncomputable def prior (P : Fin K → Kernel Y Θ) (y : Fin K → Y) : Measure (Fin K → Θ) :=
  Measure.pi fun a => P a (y a)

/-- The set of feasible allocations `𝒩_T = {n ∈ ℕ₀^K : Σ_a n_a = T}`, (37)/(151). -/
abbrev allocs (K T : ℕ) : Finset (Fin K → ℕ) := Finset.Nat.antidiagonalTuple K T

lemma allocs_nonempty (K T : ℕ) [NeZero K] : (allocs K T).Nonempty :=
  ⟨Pi.single 0 T, by simp [allocs, Finset.Nat.mem_antidiagonalTuple]⟩

/-- The TS performance bound (29): `W^TS(T, y) = 𝔼_y[T × max_a μ_a(θ_a)]`. -/
noncomputable def WTS [NeZero K] (R : Fin K → Kernel Θ ℝ) (P : Fin K → Kernel Y Θ) (T : ℕ)
    (y : Fin K → Y) : ℝ :=
  (T : ℝ) * ∫ θ, Finset.univ.sup' Finset.univ_nonempty (fun a => mu R a (θ a)) ∂(prior P y)

/-- The IRS.FH performance bound, by its closed form (33):
`W^{IRS.FH}(T, y) = 𝔼_y[T × max_a μ̂_{a,T-1}(ω; y_a)]`. -/
noncomputable def WFH [NeZero K] (R : Fin K → Kernel Θ ℝ) [∀ a, IsMarkovKernel (R a)]
    (P : Fin K → Kernel Y Θ) (U : Fin K → Y → ℝ → Y) (T : ℕ) (y : Fin K → Y) : ℝ :=
  (T : ℝ) * ∫ ω, Finset.univ.sup' Finset.univ_nonempty (fun a => muHat R P U y a (T - 1) ω) ∂(I R P y)

/-- The IRS.V-Zero performance bound, (37)/(153):
`W^{IRS.V-Zero}(T, y) = 𝔼_y[max_{n ∈ 𝒩_T} Σ_a S_a(n_a)]`. -/
noncomputable def WVZ [NeZero K] (R : Fin K → Kernel Θ ℝ) [∀ a, IsMarkovKernel (R a)]
    (P : Fin K → Kernel Y Θ) (U : Fin K → Y → ℝ → Y) (T : ℕ) (y : Fin K → Y) : ℝ :=
  ∫ ω, (allocs K T).sup' (allocs_nonempty K T) (fun n => ∑ a, S R P U y a (n a) ω) ∂(I R P y)

/-- The interpolating quantities `U_{k,n}` of (154) (arm `k` 0-based; the arms `a ≤ k-1` and
`a ≥ k+1` of the page are `a < k` and `k < a`; the coefficient of the middle term is `μ̂_{k,T-1}`,
and `(n_k - n)⁺` is natural-number subtraction). -/
noncomputable def Ukn [NeZero K] (R : Fin K → Kernel Θ ℝ) [∀ a, IsMarkovKernel (R a)]
    (P : Fin K → Kernel Y Θ) (U : Fin K → Y → ℝ → Y) (k : Fin K) (n T : ℕ) (y : Fin K → Y) : ℝ :=
  ∫ ω, (allocs K T).sup' (allocs_nonempty K T) (fun m =>
      (∑ a ∈ Finset.univ.filter (· < k), S R P U y a (m a) ω)
      + (S R P U y k (min (m k) n) ω + ((m k - n : ℕ) : ℝ) * muHat R P U y k (T - 1) ω)
      + (∑ a ∈ Finset.univ.filter (k < ·), (m a : ℝ) * muHat R P U y a (T - 1) ω)) ∂(I R P y)

/-- `n_t(a)` of (5), 0-based: the number of times `t' < t` with `s t' = a` along the action sequence
`s : Fin T → Fin K`. -/
def count {T : ℕ} (s : Fin T → Fin K) (t : ℕ) (a : Fin K) : ℕ :=
  (Finset.univ.filter fun t' : Fin T => (t' : ℕ) < t ∧ s t' = a).card

/-- The belief vector after the first `t` actions of `s`, (8): arm `a` has seen `count s t a`
rewards. -/
def ybel (U : Fin K → Y → ℝ → Y) (y : Fin K → Y) {T : ℕ} (s : Fin T → Fin K) (t : ℕ)
    (ω : Outcome K Θ) : Fin K → Y :=
  fun a => yseq U y a (count s t a) ω

/-- The time-`t` payoff (0-based `t`, so the paper's time is `t + 1` and the remaining horizon after
it is `T - t - 1`) of the inner problem with the penalty (168) generated by `V̂`:
`μ̂_{a_t, n}(ω) - V̂(T-t-1, y_{t+1}) + 𝔼[V̂(T-t-1, 𝒰(y_t, a_t, R)) ]`, the last expectation over the
predictive law of the next reward of `a_t` under the current belief. -/
noncomputable def pay (R : Fin K → Kernel Θ ℝ) (P : Fin K → Kernel Y Θ) (U : Fin K → Y → ℝ → Y)
    (y : Fin K → Y) (Vhat : ℕ → (Fin K → Y) → ℝ) (T : ℕ) (s : Fin T → Fin K) (t : Fin T)
    (ω : Outcome K Θ) : ℝ :=
  muHat R P U y (s t) (count s (t : ℕ) (s t)) ω
    - Vhat (T - (t : ℕ) - 1) (ybel U y s ((t : ℕ) + 1) ω)
    + ∫ r, Vhat (T - (t : ℕ) - 1)
        (Function.update (ybel U y s (t : ℕ) ω) (s t) (U (s t) (ybel U y s (t : ℕ) ω (s t)) r))
        ∂(pred R P (s t) (ybel U y s (t : ℕ) ω (s t)))

/-- The maximal value of the inner problem for the outcome `ω` under the penalty generated by `V̂`
(the paper's `V_1^{ẑ,in}(∅, ω; T, y)`): the maximum over action sequences `a_{1:T}` of the total
payoff. -/
noncomputable def innerMax [NeZero K] (R : Fin K → Kernel Θ ℝ) (P : Fin K → Kernel Y Θ)
    (U : Fin K → Y → ℝ → Y) (y : Fin K → Y) (Vhat : ℕ → (Fin K → Y) → ℝ) (T : ℕ)
    (ω : Outcome K Θ) : ℝ :=
  Finset.univ.sup' Finset.univ_nonempty (fun s : Fin T → Fin K => ∑ t, pay R P U y Vhat T s t ω)

/-- The performance bound (19) induced by the penalty (168) generated by `V̂`:
`W^ẑ(T, y) = 𝔼_y[max_{a_{1:T}} Σ_t (r_t - ẑ_t)]`. -/
noncomputable def penBound [NeZero K] (R : Fin K → Kernel Θ ℝ) [∀ a, IsMarkovKernel (R a)]
    (P : Fin K → Kernel Y Θ) (U : Fin K → Y → ℝ → Y) (Vhat : ℕ → (Fin K → Y) → ℝ) (T : ℕ)
    (y : Fin K → Y) : ℝ :=
  ∫ ω, innerMax R P U y Vhat T ω ∂(I R P y)

/-- The IRS.V-EMax performance bound: (19) with the penalty (26), i.e. the penalty generated by
`W^TS`. -/
noncomputable def WVEMax [NeZero K] (R : Fin K → Kernel Θ ℝ) [∀ a, IsMarkovKernel (R a)]
    (P : Fin K → Kernel Y Θ) (U : Fin K → Y → ℝ → Y) (T : ℕ) (y : Fin K → Y) : ℝ :=
  penBound R P U (fun m y' => WTS R P m y') T y

/-- Definition 2 (supersolution), (166): `V̂(0, y) = 0`, and for every belief `y`, horizon `T` and
arm `a`, the expectation `𝔼_{y_a}[R_{a,1} + V̂(T, 𝒰(y, a, R_{a,1}))]` exists and is at most
`V̂(T+1, y)`. -/
def IsSupersolution (R : Fin K → Kernel Θ ℝ) (P : Fin K → Kernel Y Θ) (U : Fin K → Y → ℝ → Y)
    (Vhat : ℕ → (Fin K → Y) → ℝ) : Prop :=
  (∀ y, Vhat 0 y = 0) ∧
  ∀ (T : ℕ) (y : Fin K → Y) (a : Fin K),
    Integrable (fun r => r + Vhat T (Function.update y a (U a (y a) r))) (pred R P a (y a)) ∧
    ∫ r, (r + Vhat T (Function.update y a (U a (y a) r))) ∂(pred R P a (y a)) ≤ Vhat (T + 1) y

/-- The standing assumptions of §2.1 on the model `(𝓡, 𝒫, 𝒰)`:
(i) conjugacy: `𝒰_a(y_a, r)` is the Bayes posterior of `θ_a` after observing `r`;
(ii) the update maps are measurable;
(iii) (3): `𝔼_{y_a}|R_{a,1}| < ∞` for every belief `y_a` and arm `a`. -/
structure StandingAssumptions [StandardBorelSpace Θ] [Nonempty Θ] (R : Fin K → Kernel Θ ℝ)
    [∀ a, IsMarkovKernel (R a)] (P : Fin K → Kernel Y Θ) [∀ a, IsMarkovKernel (P a)]
    (U : Fin K → Y → ℝ → Y) : Prop where
  conj : ∀ a ya, (fun r => P a (U a ya r)) =ᵐ[pred R P a ya] fun r => posterior (R a) (P a ya) r
  meas : ∀ a, Measurable (Function.uncurry (U a))
  integrable : ∀ a ya, Integrable (fun r : ℝ => r) (pred R P a ya)

end InfoRelaxTS.Monotone
