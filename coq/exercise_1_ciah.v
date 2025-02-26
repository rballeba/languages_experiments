Definition sum_five (x y z k t: nat) := x + y + z+ t+ k.
Compute sum_five 1 2 3 4 7.

(* Alternative definition, if you have several type variables *)
Definition sum_five_alternative (x : nat) (y: nat) (z: nat) (k: nat) (t: nat) := x + y + z + t + k.
Compute sum_five_alternative 1 2 3 4 5.

(* Alternative definition, you want to use tuples*)
Definition sum_five_alternative_tuples (x: nat*nat*nat*nat*nat) := let '(a,b,c,d,e) := x in a + b + c + d + e.
Compute sum_five_alternative_tuples (1,2,3,4,6).