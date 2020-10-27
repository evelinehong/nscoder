
(* The type of tokens. *)

type token = 
  | V_U
  | V_P
  | V_O
  | V_N
  | V_H
  | V_Di
  | V_D
  | V_3
  | V_2
  | TURN
  | TRUE
  | RUN
  | RP
  | REPEAT
  | NOTHING
  | NAME
  | LP
  | LINE
  | JUST
  | INTEGRATE
  | FALSE
  | EOF
  | EMBED
  | DEFINE
  | CONCAT

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> ((Interpreter.shapeprogram) option)
