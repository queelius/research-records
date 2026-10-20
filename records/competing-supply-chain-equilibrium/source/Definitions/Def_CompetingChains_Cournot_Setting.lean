import Mathlib
import Definitions.Def_CompetingChains_Cournot_TwoPlayerGame

namespace CompetingChains.Cournot

/-- Information sharing arrangement of a supply chain (§5, p. 13): `S` = the retailer shares its
demand signal with its manufacturer (communicative), `N` = it does not (non-communicative). -/
inductive Arrangement
  | S
  | N
  deriving DecidableEq, Repr

/-- Standing assumptions of §5 (p. 13) for two identical chains: `k > a/(4c)`, `k > 1/3`, `a > c`;
together with the positivity of the unit cost `c`, the signal accuracy `t` and the prior variance
`σsq = σ²` (§3, pp. 7–8), and the competition intensity `0 < γ < 1` (`γ_C ∈ [0,1)` on p. 7, with
`γ_C = 0` excluded). -/
def Standing (a c k γ t σsq : ℝ) : Prop :=
  0 < c ∧ c < a ∧ a / (4 * c) < k ∧ 1 / 3 < k ∧ 0 < γ ∧ γ < 1 ∧ 0 < t ∧ 0 < σsq

/-- Signal weight `tσ²/(1 + tσ²)` (p. 8): `E[θ | Y_i] = E[Y_j | Y_i] = sig · Y_i`. -/
noncomputable def sig (t σsq : ℝ) : ℝ := t * σsq / (1 + t * σsq)

/-- The signal term `tσ⁴/(tσ² + 1)` of the ex-ante profits (p. 17). -/
noncomputable def sigTerm (t σsq : ℝ) : ℝ := t * σsq ^ 2 / (t * σsq + 1)

/-- Lemma 2(a), p. 15: the response coefficient `C_i^{X_iX_j}` of retailer `i`'s equilibrium
quantity to its own signal `Y_i`, when chain `i` has arrangement `Xi` and chain `j` has `Xj`. -/
noncomputable def C (k γ t σsq : ℝ) : Arrangement → Arrangement → ℝ
  | .S, .S => k * (t * σsq) / ((4 * (t * σsq) + 4 + γ * (t * σsq)) * k - (t * σsq + 1))
  | .S, .N => (2 + (2 - γ) * (t * σsq)) * k * (t * σsq) /
      ((8 * (1 + t * σsq) ^ 2 - γ ^ 2 * (t * σsq) ^ 2) * k - 2 * (t * σsq + 1) ^ 2)
  | .N, .S => ((4 + 4 * (t * σsq) - γ * (t * σsq)) * k - (t * σsq + 1)) * (t * σsq) /
      ((8 * (t * σsq + 1) ^ 2 - γ ^ 2 * (t * σsq) ^ 2) * k - 2 * (t * σsq + 1) ^ 2)
  | .N, .N => t * σsq / (2 * (t * σsq + 1) + γ * (t * σsq))

/-- Intercept `k(a − c)/((γ_C + 4)k − 1)` of the equilibrium quantity (Lemma 2(a), p. 15). -/
noncomputable def qbar (a c k γ : ℝ) : ℝ := k * (a - c) / ((γ + 4) * k - 1)

/-- Retailer `i`'s best response (7) (`Xi = S`) and (9) (`Xi = N`), p. 14, written as a function of
`m = E[θ | Y_i]`, `e = E[q_j | Y_i]` and `E = E[q_j]`. -/
noncomputable def br (a c k γ : ℝ) : Arrangement → ℝ → ℝ → ℝ → ℝ
  | .S, m, e, _ => k / (4 * k - 1) * (a + m - γ * e - c)
  | .N, m, e, E => k / (4 * k - 1) * (a - c) + 1 / 2 * (m - γ * e + (2 * k - 1) / (4 * k - 1) * γ * E)

/-- Ex-ante profit `π^X_{R_i,C}(C_j)` of retailer `i` (p. 17) when chain `j`'s quantity responds
to `Y_j` with coefficient `Cj`. -/
noncomputable def piR (a c k γ t σsq : ℝ) : Arrangement → ℝ → ℝ
  | .S, Cj => k ^ 2 * (a - c) ^ 2 / (4 * k + k * γ - 1) ^ 2 +
      k ^ 2 / (4 * k - 1) ^ 2 * (1 - γ * Cj) ^ 2 * sigTerm t σsq
  | .N, Cj => k ^ 2 * (a - c) ^ 2 / (4 * k + k * γ - 1) ^ 2 +
      1 / 4 * (1 - γ * Cj) ^ 2 * sigTerm t σsq

/-- Ex-ante profit `π^X_{M_i,C}(C_j)` of manufacturer `i` (p. 17). -/
noncomputable def piM (a c k γ t σsq : ℝ) : Arrangement → ℝ → ℝ
  | .S, Cj => k * (4 * k - 1) * (a - c) ^ 2 / (2 * (4 * k + k * γ - 1) ^ 2) +
      k / (2 * (4 * k - 1)) * (1 - γ * Cj) ^ 2 * sigTerm t σsq
  | .N, _ => k * (4 * k - 1) * (a - c) ^ 2 / (2 * (4 * k + k * γ - 1) ^ 2)

/-- Ex-ante profit of supply chain `i`: `π^X_{i,C} = π^X_{R_i,C} + π^X_{M_i,C}` (p. 17). -/
noncomputable def piC (a c k γ t σsq : ℝ) (X : Arrangement) (Cj : ℝ) : ℝ :=
  piR a c k γ t σsq X Cj + piM a c k γ t σsq X Cj

/-- Equilibrium profit `Π^{X_iX_j}_{R_i,C} = π^{X_i}_{R_i,C}(C_j^{X_jX_i})` (p. 17). -/
noncomputable def PiR (a c k γ t σsq : ℝ) (Xi Xj : Arrangement) : ℝ :=
  piR a c k γ t σsq Xi (C k γ t σsq Xj Xi)

/-- Equilibrium profit `Π^{X_iX_j}_{M_i,C} = π^{X_i}_{M_i,C}(C_j^{X_jX_i})` (p. 17). -/
noncomputable def PiM (a c k γ t σsq : ℝ) (Xi Xj : Arrangement) : ℝ :=
  piM a c k γ t σsq Xi (C k γ t σsq Xj Xi)

/-- Equilibrium profit `Π^{X_iX_j}_{i,C} = π^{X_i}_{i,C}(C_j^{X_jX_i})` of supply chain `i` (p. 17). -/
noncomputable def PiC (a c k γ t σsq : ℝ) (Xi Xj : Arrangement) : ℝ :=
  piC a c k γ t σsq Xi (C k γ t σsq Xj Xi)

/-- Value of information sharing to chain `i`, `V^{X_j}_{i,C} = Π^{SX_j}_{i,C} − Π^{NX_j}_{i,C}`
(§5.2, p. 18). -/
noncomputable def V (a c k γ t σsq : ℝ) (Xj : Arrangement) : ℝ :=
  PiC a c k γ t σsq .S Xj - PiC a c k γ t σsq .N Xj

/-- Manufacturer `i`'s optimal side payment `m̂_i^{X_j}` to retailer `i` (§5.3, p. 21). -/
noncomputable def mhat (a c k γ t σsq : ℝ) (Xj : Arrangement) : ℝ :=
  if PiR a c k γ t σsq .N Xj > PiR a c k γ t σsq .S Xj then
    PiR a c k γ t σsq .N Xj - PiR a c k γ t σsq .S Xj
  else 0

/-- Manufacturer `i`'s stage-one payoff when chain `i` has arrangement `Xi` and chain `j` has `Xj`
(§5.3, pp. 20–21): `Π^{SX_j}_{M_i,C} − m̂_i^{X_j}` if `Xi = S`, and `Π^{NX_j}_{M_i,C}` if `Xi = N`. -/
noncomputable def payoff (a c k γ t σsq : ℝ) : Arrangement → Arrangement → ℝ
  | .S, Xj => PiM a c k γ t σsq .S Xj - mhat a c k γ t σsq Xj
  | .N, Xj => PiM a c k γ t σsq .N Xj

/-- The pure-strategy Nash equilibria `(X₁, X₂)` of the stage-one game between the two
manufacturers (Table 1, p. 21): manufacturer 1's payoff at `(X₁, X₂)` is `payoff X₁ X₂`, and
manufacturer 2's is `payoff X₂ X₁`. -/
def equilibria (a c k γ t σsq : ℝ) : Set (Arrangement × Arrangement) :=
  pureNashSet (fun X₁ X₂ => payoff a c k γ t σsq X₁ X₂) (fun X₁ X₂ => payoff a c k γ t σsq X₂ X₁)

end CompetingChains.Cournot
