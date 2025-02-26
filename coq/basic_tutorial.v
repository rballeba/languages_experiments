(* Some basic computation examples *)
Compute let f := fun x => (x*3, x) in f 3.
Check forall x:nat, x <= 3 \/ (exists y: nat, x=3+x).

Require Import Bool.
Compute if true then 3 else 5.

SearchPattern bool.

Compute negb true.

Require Import Arith.

(* Pattern matching is well supported in coq
S is from successor, meaning that if we find n being the 
successor of some number p, then we enter the S p => false branch
in the pattern matching.
*)
Definition is_zero (n:nat) := 
    match n with 
    | 0 => true
    | S p => false
    end.

Compute is_zero 5.

Print pred.

(* Recursive functions are annotated with Fixpoint*)
Fixpoint factorial (n: nat) := 
    match n with
    | 0 => 1
    | S p => n* factorial p
    end.

Compute factorial 5.

Fixpoint sum_n (n: nat) := 
    match n with
    | 0 => 0
    | S p => n + sum_n p
    end.

Compute sum_n 4.

Compute S 3.

(*On recursive functions with more than one variable, 
the input should be taken using pattern matching on one of the variables*)

Fixpoint sum_n2 n s := 
    match n with 
    0 => s
    | S p => sum_n2 p (p+s)
    end.

Compute sum_n2 3 4.

Fixpoint is_even n :=
    match n with
    0 => true
    | 1 => false
    | S (S p) => is_even p
end.

Compute is_even 6.

(* Coq also has lists *)
Require Import List.

Check 1::2::3::nil.

(* Coq supports maps and concatenations*)
Compute (1::2::3::nil ++ 4::5::6::nil).
Compute map (fun x => x*x) (1::2::3::4::nil).

SearchPattern (nat -> nat -> bool).
Search Nat.eqb.
Locate "_ =? _".

(* Pattern matching can access elements at specific positions on a list*)

Definition head_evb l :=
match l with
nil => false
| a::tl => is_even a
end.

Compute head_evb (4::2::3::nil).
