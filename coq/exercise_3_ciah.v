(*
Knowing that the Coq system provides a function
Nat.eqb to compare two natural numbers (Nat.eqb n p returns true when n=p),
define a function count_list that takes a natural number and a list and returns
the number of times the natural number occurs in the list.
*)

Require Import Bool.
Require Import Arith.
Require Import List.

Fixpoint count_list n l := 
    match l with
    nil => 0
    | a::tl => (if(Nat.eqb n a) then 1 else 0) + (count_list n tl) 
    end.

Compute count_list 3 (3::3::1::2::5::3::1::6::3::nil).