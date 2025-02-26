(*
Exercise on sorting
Define a function that takes a list as input and returns
true when it has less than 2 elements or when the first element
is smaller than or equal to the second one
*)

Require Import Arith.
Require Import List.
Require Import Bool.

Definition one_elem_or_first_lower_second l :=
    match l with
    nil => false
    | a::nil => true
    | a::b::tl => if a <=? b then true else false
    end.

Compute one_elem_or_first_lower_second (3::5::1::7::nil).

(*
Now define a function that takes a list as input and returns true exactly when this list is sorted
*)

Fixpoint sorted_list l :=
    match l with
    nil => true
    | a::tl => one_elem_or_first_lower_second l && sorted_list tl
    end.

Compute sorted_list (1::3::5::25::7::9::11::nil).