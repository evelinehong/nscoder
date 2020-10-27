
(* The type of tokens. *)

type token = 
  | VAR of (string)
  | UNIT
  | TWO
  | TURN
  | THREE
  | REPEAT
  | PREV
  | PEN of (bool)
  | OPPOSITE
  | NOP
  | NEXT
  | INTEGRATE
  | HALF
  | EQUALS
  | EOF
  | END_BLOCK
  | END_ARGS
  | EMBED
  | DOUBLE
  | DIVIDE
  | COMMA_ARGS
  | COLON
  | BEGIN_BLOCK
  | BEGIN_ARGS
  | ARG_T
  | ARG_SPEED
  | ARG_PEN
  | ARG_ANGULARSPEED
  | ARG_ANGULARACCEL
  | ARG_ANGLE
  | ARG_ACCEL

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> ((Interpreter.shapeprogram) option)
