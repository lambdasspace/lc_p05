Theorem ejercicio01 : forall p q : Prop,
  p /\ q -> q /\ p.
Abort.

Theorem ejercicio02 : forall p q : Prop,
  p \/ q -> q \/ p.
Abort.

Theorem ejercicio03 : forall p q r : Prop,
  p /\ (q \/ r) -> (p /\ q) \/ (p /\ r).
Abort.

Proposition ejercicio04 : forall p q r : Prop,
  (p -> q -> r) -> (p -> q) -> p -> r.
Abort.


Theorem ejercicio05 : forall n:nat,
  0 + n = n. 
Abort.

Theorem ejercicio06 : forall n m:nat,
  n + m = m + n.
Abort.

Fixpoint concatena {A : Type} (xs : list A) (ys : list A) : (list A) := xs.

Fixpoint reversa {A : Type} (xs : list A) := xs.

Theorem ejercicio07 {A : Type} : forall xs ys zs : (list A),
  concatena xs (concatena ys zs) = concatena (concatena xs ys) zs.
Abort.

Theorem ejercicio08 {A : Type} : forall xs ys : (list A),
  reversa (concatena xs ys) = concatena (reversa ys) (reversa xs).
Abort.