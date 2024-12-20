import Game.Metadata

open TopologicalSpace

World "Trivial World"
Level 1

Title "Hello World"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

Statement (h : x = 2) (g: y = 4) : x + x = y := by
  Hint "You can either start using `{h}` or `{g}`."
  Branch
    rw [g]
    Hint "You should use `{h}` now."
    rw [h]
  rw [h]
  Hint "You should use `{g}` now."
  rw [g]

Conclusion "This last message appears if the level is solved."

/- Use these commands to add items to the game's inventory. -/

NewTactic rw rfl

-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq


Level 2

Title "Intersection of open sets"

Introduction "Let's prove that a set X with the
definition: U ⊆ X is open ∀ U ⊆ X is indeed
a topology"


Statement Trivial.isOpen_inter (A B : Set ℝ) (hA : Trivial.IsOpen A) (hB : Trivial.IsOpen B) : Trivial.IsOpen (A ∩ B) := by
  rw [Trivial.IsOpen_def]
  trivial

NewTheorem Trivial.IsOpen_def

Level 3
Title "Union of open sets"

Introduction "Cosas"

--Statement Trivial.isOpen_sUnion (S : Set (Set ℝ)) :sorry
