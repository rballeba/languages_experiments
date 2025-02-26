(* Define a function that takes as input a number n and returns a list with n elements, from 0 to n-1*)
Require Import List.

Fixpoint range (n: nat) :=
    match n with
        0 => nil
        | S p => range p ++ ((n-1)::nil)
    end.

Compute range 5.