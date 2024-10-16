import Mathlib.Tactic

universe u
variable (X : Type u)

def Trivial.IsOpen (A : Set ℝ) : Prop := True

theorem Trivial.IsOpen_def (A : Set ℝ) : Trivial.IsOpen A  ↔ True := by
  trivial

open TopologicalSpace

example TopologicalSpace X where
  IsOpen (s : Set X) := True
  isOpen_univ := by


example : TopologicalSpace X where
  IsOpen (s : Set X) := True
  isOpen_univ := by
    trivial
  isOpen_inter := by
    intro s t hs ht
    trivial
  isOpen_sUnion := by
    intro F hF
    trivial
