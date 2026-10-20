import Mathlib

namespace CompetingChains.Cournot

/-- A pure-strategy Nash equilibrium of a two-player game in normal form. Player 1 chooses
`x₁ : A₁`, player 2 chooses `x₂ : A₂`, and `u₁ x₁ x₂`, `u₂ x₁ x₂` are their payoffs at the profile
`(x₁, x₂)`. The profile is an equilibrium when neither player gains by a unilateral deviation. -/
def IsPureNash {A₁ A₂ : Type*} (u₁ u₂ : A₁ → A₂ → ℝ) (x₁ : A₁) (x₂ : A₂) : Prop :=
  (∀ y₁ : A₁, u₁ y₁ x₂ ≤ u₁ x₁ x₂) ∧ (∀ y₂ : A₂, u₂ x₁ y₂ ≤ u₂ x₁ x₂)

/-- The set of pure-strategy Nash equilibria of the two-player game with payoffs `u₁`, `u₂`. -/
def pureNashSet {A₁ A₂ : Type*} (u₁ u₂ : A₁ → A₂ → ℝ) : Set (A₁ × A₂) :=
  {p | IsPureNash u₁ u₂ p.1 p.2}

end CompetingChains.Cournot
