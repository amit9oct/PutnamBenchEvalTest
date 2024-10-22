import Mathlib

open Polynomial Filter Topology Real Set Nat List

/--
Suppose that $G$ is a finite group generated by the two elements $g$ and $h$, where the order of $g$ is odd. Show that every element of $G$ can be written in the form
\[
g^{m_1} h^{n_1} g^{m_2} h^{n_2} \cdots g^{m_r} h^{n_r}
\]
with $1 \leq r \leq |G|$ and $m_1, n_1, m_2, n_2, \ldots, m_r, n_r \in \{-1, 1\}$. 
(Here $|G|$ is the number of elements of $G$.)
-/
theorem putnam_2016_a5
(G : Type*) [Group G]
(Gfin : Fintype G)
(g h : G)
(ghgen : Group.closure {g, h} = G ∧ ¬Group.closure {g} = G ∧ ¬Group.closure {h} = G)
(godd : Odd (orderOf g))
(S : Set G)
(hS : S = {g * h, g⁻¹ * h, g * h⁻¹, g⁻¹ * h⁻¹})
: (∀ x : G, ∃ mn : List G, 1 ≤ mn.length ∧ mn.length ≤ Gfin.card ∧ ∀ i : Fin mn.length, mn.get i ∈ S ∧ x = List.prod mn) :=
sorry
