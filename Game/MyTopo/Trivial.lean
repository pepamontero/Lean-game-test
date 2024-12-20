import Mathlib.Tactic

universe u
variable (X : Type u)

def Trivial.IsOpen (A : Set ℝ) : Prop := True

theorem Trivial.IsOpen_def (A : Set ℝ) : Trivial.IsOpen A  ↔ True := by
  trivial
