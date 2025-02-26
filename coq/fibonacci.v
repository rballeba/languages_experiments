(* In the case of Fibonacci, you can only call fibonacci with the values matched in pattern 
matching, so to obtain two values, the predecessor and the predecessor of the predecessor, you
use a nested match*)
Fixpoint fibonacci (n : nat) :=
match n with
    0 => 0 (*n=0*)
    | S n' => match n' with
                0 => 1 (*n = 1*)
                | S n'' => fibonacci (n') + fibonacci(n'')
              end
end.

Compute fibonacci 6.