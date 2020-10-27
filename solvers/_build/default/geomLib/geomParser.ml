
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | VAR of (
# 2 "geomParser.mly"
       (string)
# 11 "geomParser.ml"
  )
    | UNIT
    | TWO
    | TURN
    | THREE
    | REPEAT
    | PREV
    | PEN of (
# 1 "geomParser.mly"
       (bool)
# 22 "geomParser.ml"
  )
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
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState87
  | MenhirState84
  | MenhirState78
  | MenhirState75
  | MenhirState73
  | MenhirState70
  | MenhirState68
  | MenhirState65
  | MenhirState63
  | MenhirState60
  | MenhirState54
  | MenhirState52
  | MenhirState47
  | MenhirState43
  | MenhirState38
  | MenhirState20
  | MenhirState18
  | MenhirState16
  | MenhirState14
  | MenhirState12
  | MenhirState10
  | MenhirState8
  | MenhirState2
  | MenhirState0

let rec _menhir_goto_optional_integrate_pen : _menhir_env -> 'ttv_tail -> 'tv_optional_integrate_pen -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv379) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_pen) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA_ARGS ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | ARG_ACCEL | ARG_ANGULARACCEL | ARG_ANGULARSPEED | ARG_SPEED | END_ARGS ->
        _menhir_reduce13 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv380)

and _menhir_goto_optional_comma : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_optional_comma -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv329) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARG_PEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv323) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQUALS ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv319) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | PEN _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv315)) = Obj.magic _menhir_stack in
                    let (_v : (
# 1 "geomParser.mly"
       (bool)
# 133 "geomParser.ml"
                    )) = _v in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv313)) = Obj.magic _menhir_stack in
                    let ((b : (
# 1 "geomParser.mly"
       (bool)
# 141 "geomParser.ml"
                    )) : (
# 1 "geomParser.mly"
       (bool)
# 145 "geomParser.ml"
                    )) = _v in
                    ((let _2 = () in
                    let _1 = () in
                    let _v : 'tv_optional_integrate_pen = 
# 91 "geomParser.mly"
                                 ( Some b )
# 152 "geomParser.ml"
                     in
                    _menhir_goto_optional_integrate_pen _menhir_env _menhir_stack _v) : 'freshtv314)) : 'freshtv316)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv317)) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv318)) : 'freshtv320)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv321) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv322)) : 'freshtv324)
        | ARG_ACCEL | ARG_ANGULARACCEL | ARG_ANGULARSPEED | ARG_SPEED | COMMA_ARGS | END_ARGS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv325) = Obj.magic _menhir_stack in
            ((let _v : 'tv_optional_integrate_pen = 
# 92 "geomParser.mly"
      (None)
# 173 "geomParser.ml"
             in
            _menhir_goto_optional_integrate_pen _menhir_env _menhir_stack _v) : 'freshtv326)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv327) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)) : 'freshtv330)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv341) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_pen) * _menhir_state * 'tv_optional_comma) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARG_SPEED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv335) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQUALS ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv331) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | DIVIDE ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                | DOUBLE ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                | HALF ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                | NEXT ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                | OPPOSITE ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                | PREV ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                | THREE ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                | TWO ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                | UNIT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                | VAR _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv332)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv333) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv334)) : 'freshtv336)
        | ARG_ACCEL | ARG_ANGULARACCEL | ARG_ANGULARSPEED | COMMA_ARGS | END_ARGS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv337) = Obj.magic _menhir_stack in
            ((let _v : 'tv_optional_integrate_speed = 
# 95 "geomParser.mly"
      (None)
# 237 "geomParser.ml"
             in
            _menhir_goto_optional_integrate_speed _menhir_env _menhir_stack _v) : 'freshtv338)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv339) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_pen) * _menhir_state * 'tv_optional_comma) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv340)) : 'freshtv342)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv353) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_pen) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_speed) * _menhir_state * 'tv_optional_comma) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARG_ACCEL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv347) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQUALS ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv343) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | DIVIDE ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | DOUBLE ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | HALF ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | NEXT ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | OPPOSITE ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | PREV ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | THREE ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | TWO ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | UNIT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState68
                | VAR _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv344)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv345) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv346)) : 'freshtv348)
        | ARG_ANGULARACCEL | ARG_ANGULARSPEED | COMMA_ARGS | END_ARGS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv349) = Obj.magic _menhir_stack in
            ((let _v : 'tv_optional_integrate_accel = 
# 98 "geomParser.mly"
      (None)
# 301 "geomParser.ml"
             in
            _menhir_goto_optional_integrate_accel _menhir_env _menhir_stack _v) : 'freshtv350)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv351) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_pen) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_speed) * _menhir_state * 'tv_optional_comma) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv352)) : 'freshtv354)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv365) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_pen) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_speed) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_accel) * _menhir_state * 'tv_optional_comma) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARG_ANGULARSPEED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv359) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQUALS ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv355) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | DIVIDE ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | DOUBLE ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | HALF ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | NEXT ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | OPPOSITE ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | PREV ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | THREE ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | TWO ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | UNIT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState73
                | VAR _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73) : 'freshtv356)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv357) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv358)) : 'freshtv360)
        | ARG_ANGULARACCEL | COMMA_ARGS | END_ARGS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv361) = Obj.magic _menhir_stack in
            ((let _v : 'tv_optional_integrate_angularSpeed = 
# 101 "geomParser.mly"
      (None)
# 365 "geomParser.ml"
             in
            _menhir_goto_optional_integrate_angularSpeed _menhir_env _menhir_stack _v) : 'freshtv362)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv363) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_pen) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_speed) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_accel) * _menhir_state * 'tv_optional_comma) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv364)) : 'freshtv366)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((('freshtv377) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_pen) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_speed) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_accel) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_angularSpeed) * _menhir_state * 'tv_optional_comma) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARG_ANGULARACCEL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv371) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQUALS ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv367) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | DIVIDE ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | DOUBLE ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | HALF ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | NEXT ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | OPPOSITE ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | PREV ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | THREE ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | TWO ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | UNIT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                | VAR _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv368)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv369) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv370)) : 'freshtv372)
        | END_ARGS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv373) = Obj.magic _menhir_stack in
            ((let _v : 'tv_optional_integrate_angularAccel = 
# 104 "geomParser.mly"
      (None)
# 429 "geomParser.ml"
             in
            _menhir_goto_optional_integrate_angularAccel _menhir_env _menhir_stack _v) : 'freshtv374)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((((('freshtv375) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_pen) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_speed) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_accel) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_angularSpeed) * _menhir_state * 'tv_optional_comma) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv376)) : 'freshtv378)
    | _ ->
        _menhir_fail ()

and _menhir_goto_optional_integrate_angularAccel : _menhir_env -> 'ttv_tail -> 'tv_optional_integrate_angularAccel -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((((((((('freshtv311) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_pen) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_speed) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_accel) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_angularSpeed) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_angularAccel) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | END_ARGS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((('freshtv307) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_pen) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_speed) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_accel) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_angularSpeed) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_angularAccel) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((('freshtv305) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_pen) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_speed) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_accel) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_angularSpeed) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_angularAccel) = Obj.magic _menhir_stack in
        ((let (((((((((((_menhir_stack, (d : 'tv_optional_integrate_d)), _, (_3 : 'tv_optional_comma)), (pen : 'tv_optional_integrate_pen)), _, (_5 : 'tv_optional_comma)), (speed : 'tv_optional_integrate_speed)), _, (_7 : 'tv_optional_comma)), (accel : 'tv_optional_integrate_accel)), _, (_9 : 'tv_optional_comma)), (angularSpeed : 'tv_optional_integrate_angularSpeed)), _, (_11 : 'tv_optional_comma)), (angularAccel : 'tv_optional_integrate_angularAccel)) = _menhir_stack in
        let _13 = () in
        let _1 = () in
        let _v : 'tv_optional_integrate_args = 
# 85 "geomParser.mly"
        (Interpreter.Integrate (d,pen,(speed,accel,angularSpeed,angularAccel)))
# 462 "geomParser.ml"
         in
        _menhir_goto_optional_integrate_args _menhir_env _menhir_stack _v) : 'freshtv306)) : 'freshtv308)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((('freshtv309) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_pen) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_speed) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_accel) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_angularSpeed) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_angularAccel) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)) : 'freshtv312)

and _menhir_goto_optional_integrate_angularSpeed : _menhir_env -> 'ttv_tail -> 'tv_optional_integrate_angularSpeed -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((((((('freshtv303) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_pen) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_speed) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_accel) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_angularSpeed) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA_ARGS ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | ARG_ANGULARACCEL | END_ARGS ->
        _menhir_reduce13 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv304)

and _menhir_goto_optional_integrate_accel : _menhir_env -> 'ttv_tail -> 'tv_optional_integrate_accel -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((((('freshtv301) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_pen) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_speed) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_accel) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA_ARGS ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | ARG_ANGULARACCEL | ARG_ANGULARSPEED | END_ARGS ->
        _menhir_reduce13 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv302)

and _menhir_goto_optional_integrate_speed : _menhir_env -> 'ttv_tail -> 'tv_optional_integrate_speed -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((('freshtv299) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_pen) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_speed) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA_ARGS ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | ARG_ACCEL | ARG_ANGULARACCEL | ARG_ANGULARSPEED | END_ARGS ->
        _menhir_reduce13 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv300)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run87 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_value -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EMBED ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | INTEGRATE ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | NOP ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | REPEAT ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | TURN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87

and _menhir_reduce13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_optional_comma = 
# 44 "geomParser.mly"
      ()
# 556 "geomParser.ml"
     in
    _menhir_goto_optional_comma _menhir_env _menhir_stack _menhir_s _v

and _menhir_run55 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv297) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_optional_comma = 
# 43 "geomParser.mly"
                 ()
# 570 "geomParser.ml"
     in
    _menhir_goto_optional_comma _menhir_env _menhir_stack _menhir_s _v) : 'freshtv298)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv207 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA_ARGS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv203 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DIVIDE ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | DOUBLE ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | HALF ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | NEXT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | OPPOSITE ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | PREV ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | THREE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | TWO ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | UNIT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | VAR _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv204)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv205 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)) : 'freshtv208)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv215 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END_ARGS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv211 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv209 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 55 "geomParser.mly"
    (Interpreter.Divide (e1,e2) )
# 641 "geomParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv210)) : 'freshtv212)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv213 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)) : 'freshtv216)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv223 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END_ARGS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv219 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv217 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 51 "geomParser.mly"
                                              (Interpreter.Double (e) )
# 670 "geomParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv218)) : 'freshtv220)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv221 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)) : 'freshtv224)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv231 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END_ARGS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv227 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv225 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 52 "geomParser.mly"
                                            (Interpreter.Half (e) )
# 699 "geomParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv226)) : 'freshtv228)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv229 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)) : 'freshtv232)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv239 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END_ARGS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv235 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv233 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 53 "geomParser.mly"
                                            (Interpreter.Next (e) )
# 728 "geomParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv234)) : 'freshtv236)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv237 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)) : 'freshtv240)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END_ARGS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv243 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv241 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 57 "geomParser.mly"
                                                (Interpreter.Opposite (e) )
# 757 "geomParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv242)) : 'freshtv244)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv245 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)) : 'freshtv248)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv255 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END_ARGS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv251 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv249 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 56 "geomParser.mly"
                                            (Interpreter.Prev (e) )
# 786 "geomParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv250)) : 'freshtv252)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv253 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)) : 'freshtv256)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv259 * _menhir_state * (
# 2 "geomParser.mly"
       (string)
# 801 "geomParser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv257 * _menhir_state * (
# 2 "geomParser.mly"
       (string)
# 807 "geomParser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (s : (
# 2 "geomParser.mly"
       (string)
# 812 "geomParser.ml"
        ))), _, (e : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_value = 
# 113 "geomParser.mly"
                                  (Interpreter.Define (s,e))
# 818 "geomParser.ml"
         in
        _menhir_goto_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)) : 'freshtv260)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv267))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END_ARGS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv263))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv261))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, (e : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_optional_turn_args = 
# 61 "geomParser.mly"
                                                            (Some e)
# 841 "geomParser.ml"
             in
            _menhir_goto_optional_turn_args _menhir_env _menhir_stack _v) : 'freshtv262)) : 'freshtv264)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv265))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)) : 'freshtv268)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv275) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END_ARGS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv271) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv269) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_optional_repeat_args = 
# 69 "geomParser.mly"
                                       ( Some e )
# 869 "geomParser.ml"
             in
            _menhir_goto_optional_repeat_args _menhir_env _menhir_stack _v) : 'freshtv270)) : 'freshtv272)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv273) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)) : 'freshtv276)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv279)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv277)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, (e : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_optional_integrate_d = 
# 88 "geomParser.mly"
                                ( Some e )
# 890 "geomParser.ml"
         in
        _menhir_goto_optional_integrate_d _menhir_env _menhir_stack _v) : 'freshtv278)) : 'freshtv280)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv283)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv281)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, (e : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_optional_integrate_speed = 
# 94 "geomParser.mly"
                                    ( Some e )
# 904 "geomParser.ml"
         in
        _menhir_goto_optional_integrate_speed _menhir_env _menhir_stack _v) : 'freshtv282)) : 'freshtv284)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv287)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv285)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, (e : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_optional_integrate_accel = 
# 97 "geomParser.mly"
                                    ( Some e )
# 918 "geomParser.ml"
         in
        _menhir_goto_optional_integrate_accel _menhir_env _menhir_stack _v) : 'freshtv286)) : 'freshtv288)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv291)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv289)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, (e : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_optional_integrate_angularSpeed = 
# 100 "geomParser.mly"
                                           ( Some e )
# 932 "geomParser.ml"
         in
        _menhir_goto_optional_integrate_angularSpeed _menhir_env _menhir_stack _v) : 'freshtv290)) : 'freshtv292)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv295)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv293)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, (e : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_optional_integrate_angularAccel = 
# 103 "geomParser.mly"
                                           ( Some e )
# 946 "geomParser.ml"
         in
        _menhir_goto_optional_integrate_angularAccel _menhir_env _menhir_stack _v) : 'freshtv294)) : 'freshtv296)
    | _ ->
        _menhir_fail ()

and _menhir_goto_optional_turn_args : _menhir_env -> 'ttv_tail -> 'tv_optional_turn_args -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv201 * _menhir_state) = Obj.magic _menhir_stack in
    let (_v : 'tv_optional_turn_args) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv199 * _menhir_state) = Obj.magic _menhir_stack in
    let ((args : 'tv_optional_turn_args) : 'tv_optional_turn_args) = _v in
    ((let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_turn = 
# 65 "geomParser.mly"
                                         (Interpreter.Turn args)
# 965 "geomParser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv197) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_turn) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv195) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_turn) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv193) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((t : 'tv_turn) : 'tv_turn) = _v in
    ((let _v : 'tv_value = 
# 110 "geomParser.mly"
               ( t )
# 982 "geomParser.ml"
     in
    _menhir_goto_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv194)) : 'freshtv196)) : 'freshtv198)) : 'freshtv200)) : 'freshtv202)

and _menhir_goto_optional_repeat_args : _menhir_env -> 'ttv_tail -> 'tv_optional_repeat_args -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv191 * _menhir_state) * 'tv_optional_repeat_args) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN_BLOCK ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv187 * _menhir_state) * 'tv_optional_repeat_args) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EMBED ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | INTEGRATE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | NOP ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | REPEAT ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | TURN ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv188)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state) * 'tv_optional_repeat_args) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)) : 'freshtv192)

and _menhir_goto_value : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_value -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv159 * _menhir_state)) * _menhir_state * 'tv_value) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | END_BLOCK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv155 * _menhir_state)) * _menhir_state * 'tv_value) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv153 * _menhir_state)) * _menhir_state * 'tv_value) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (p : 'tv_value)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_value = 
# 111 "geomParser.mly"
                                                  (Interpreter.Embed p)
# 1049 "geomParser.ml"
             in
            _menhir_goto_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv154)) : 'freshtv156)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv157 * _menhir_state)) * _menhir_state * 'tv_value) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)) : 'freshtv160)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv163 * _menhir_state * 'tv_value)) * _menhir_state * 'tv_value) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv161 * _menhir_state * 'tv_value)) * _menhir_state * 'tv_value) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (p1 : 'tv_value)), _, (p2 : 'tv_value)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_value = 
# 112 "geomParser.mly"
                                      (Interpreter.Concat (p1,p2))
# 1069 "geomParser.ml"
         in
        _menhir_goto_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv162)) : 'freshtv164)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv177 * _menhir_state) * 'tv_optional_repeat_args)) * _menhir_state * 'tv_value) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | END_BLOCK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv173 * _menhir_state) * 'tv_optional_repeat_args)) * _menhir_state * 'tv_value) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv171 * _menhir_state) * 'tv_optional_repeat_args)) * _menhir_state * 'tv_value) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (n : 'tv_optional_repeat_args)), _, (p : 'tv_value)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_repeat = 
# 73 "geomParser.mly"
        (Interpreter.Repeat (n,p))
# 1093 "geomParser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv169) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_repeat) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv167) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_repeat) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv165) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((r : 'tv_repeat) : 'tv_repeat) = _v in
            ((let _v : 'tv_value = 
# 115 "geomParser.mly"
                 ( r )
# 1110 "geomParser.ml"
             in
            _menhir_goto_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)) : 'freshtv168)) : 'freshtv170)) : 'freshtv172)) : 'freshtv174)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv175 * _menhir_state) * 'tv_optional_repeat_args)) * _menhir_state * 'tv_value) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)) : 'freshtv178)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv185 * _menhir_state * 'tv_value) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv181 * _menhir_state * 'tv_value) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv179 * _menhir_state * 'tv_value) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (v : 'tv_value)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 35 "geomParser.mly"
       ((Interpreter.shapeprogram) option)
# 1138 "geomParser.ml"
            ) = 
# 39 "geomParser.mly"
                      ( Some (v) )
# 1142 "geomParser.ml"
             in
            _menhir_goto_program _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)) : 'freshtv182)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv183 * _menhir_state * 'tv_value) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)) : 'freshtv186)
    | _ ->
        _menhir_fail ()

and _menhir_goto_optional_integrate_args : _menhir_env -> 'ttv_tail -> 'tv_optional_integrate_args -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv151 * _menhir_state) = Obj.magic _menhir_stack in
    let (_v : 'tv_optional_integrate_args) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv149 * _menhir_state) = Obj.magic _menhir_stack in
    let ((i : 'tv_optional_integrate_args) : 'tv_optional_integrate_args) = _v in
    ((let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_integrate = 
# 107 "geomParser.mly"
                                    ( i )
# 1168 "geomParser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv147) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_integrate) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv145) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_integrate) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv143) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : 'tv_integrate) : 'tv_integrate) = _v in
    ((let _v : 'tv_value = 
# 116 "geomParser.mly"
                    ( i )
# 1185 "geomParser.ml"
     in
    _menhir_goto_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv144)) : 'freshtv146)) : 'freshtv148)) : 'freshtv150)) : 'freshtv152)

and _menhir_goto_optional_integrate_d : _menhir_env -> 'ttv_tail -> 'tv_optional_integrate_d -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv141) * 'tv_optional_integrate_d) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA_ARGS ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | ARG_ACCEL | ARG_ANGULARACCEL | ARG_ANGULARSPEED | ARG_PEN | ARG_SPEED | END_ARGS ->
        _menhir_reduce13 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv142)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 2 "geomParser.mly"
       (string)
# 1209 "geomParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv139) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((s : (
# 2 "geomParser.mly"
       (string)
# 1219 "geomParser.ml"
    )) : (
# 2 "geomParser.mly"
       (string)
# 1223 "geomParser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 58 "geomParser.mly"
            ( Interpreter.Name s )
# 1228 "geomParser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv140)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv137) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expr = 
# 47 "geomParser.mly"
          ( Interpreter.Unit )
# 1242 "geomParser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv138)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv135) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expr = 
# 48 "geomParser.mly"
          ( Interpreter.Next(Interpreter.Unit) )
# 1256 "geomParser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv133) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expr = 
# 49 "geomParser.mly"
          ( Interpreter.Next(Interpreter.Next(Interpreter.Unit)) )
# 1270 "geomParser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv134)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN_ARGS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | DOUBLE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | HALF ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | NEXT ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | OPPOSITE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | PREV ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | THREE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | TWO ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | UNIT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | VAR _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8) : 'freshtv130)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN_ARGS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | DOUBLE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | HALF ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | NEXT ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | OPPOSITE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | PREV ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | THREE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | TWO ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | UNIT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | VAR _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv126)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN_ARGS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | DOUBLE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | HALF ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | NEXT ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | OPPOSITE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | PREV ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | THREE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | TWO ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | UNIT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | VAR _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv122)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN_ARGS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | DOUBLE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | HALF ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | NEXT ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | OPPOSITE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | PREV ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | THREE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | TWO ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | UNIT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | VAR _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv118)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN_ARGS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | DOUBLE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | HALF ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | NEXT ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | OPPOSITE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | PREV ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | THREE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | TWO ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | UNIT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | VAR _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv114)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN_ARGS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | DOUBLE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | HALF ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | NEXT ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | OPPOSITE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | PREV ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | THREE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | TWO ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | UNIT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | VAR _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv110)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_value)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv66)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv67) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_pen) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_speed) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_accel) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_angularSpeed) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv70)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv71) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_pen) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_speed) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_accel) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv74)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv75) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_pen) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_speed) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv78)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv79) * 'tv_optional_integrate_d) * _menhir_state * 'tv_optional_comma) * 'tv_optional_integrate_pen) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81) * 'tv_optional_integrate_d) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv82)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv84)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state) * 'tv_optional_repeat_args)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv88)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv89))) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv90)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv91 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state * (
# 2 "geomParser.mly"
       (string)
# 1648 "geomParser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv108)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 2 "geomParser.mly"
       (string)
# 1660 "geomParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQUALS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state * (
# 2 "geomParser.mly"
       (string)
# 1672 "geomParser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | DOUBLE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | HALF ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | NEXT ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | OPPOSITE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | PREV ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | THREE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | TWO ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | UNIT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | VAR _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv58)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state * (
# 2 "geomParser.mly"
       (string)
# 1708 "geomParser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN_ARGS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARG_ANGLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv43) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQUALS ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv39)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | DIVIDE ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | DOUBLE ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | HALF ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | NEXT ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | OPPOSITE ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | PREV ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | THREE ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | TWO ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | UNIT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | VAR _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38) : 'freshtv40)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv41)) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv42)) : 'freshtv44)
        | END_ARGS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv47) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv45) = Obj.magic _menhir_stack in
            ((let _2 = () in
            let _1 = () in
            let _v : 'tv_optional_turn_args = 
# 62 "geomParser.mly"
                            (None)
# 1778 "geomParser.ml"
             in
            _menhir_goto_optional_turn_args _menhir_env _menhir_stack _v) : 'freshtv46)) : 'freshtv48)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv49) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv50)) : 'freshtv52)
    | COLON | END_BLOCK | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53) = Obj.magic _menhir_stack in
        ((let _v : 'tv_optional_turn_args = 
# 63 "geomParser.mly"
      (None)
# 1793 "geomParser.ml"
         in
        _menhir_goto_optional_turn_args _menhir_env _menhir_stack _v) : 'freshtv54)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN_ARGS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDE ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | DOUBLE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | HALF ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | NEXT ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | OPPOSITE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | PREV ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | THREE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | TWO ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | UNIT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | VAR _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43) : 'freshtv34)
    | BEGIN_BLOCK ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35) = Obj.magic _menhir_stack in
        ((let _v : 'tv_optional_repeat_args = 
# 70 "geomParser.mly"
      (None)
# 1846 "geomParser.ml"
         in
        _menhir_goto_optional_repeat_args _menhir_env _menhir_stack _v) : 'freshtv36)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)

and _menhir_run48 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv31) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_value = 
# 114 "geomParser.mly"
          ( Interpreter.Nop )
# 1867 "geomParser.ml"
     in
    _menhir_goto_value _menhir_env _menhir_stack _menhir_s _v) : 'freshtv32)

and _menhir_run49 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN_ARGS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARG_T ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQUALS ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | DIVIDE ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState52
                | DOUBLE ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState52
                | HALF ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState52
                | NEXT ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState52
                | OPPOSITE ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState52
                | PREV ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState52
                | THREE ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState52
                | TWO ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState52
                | UNIT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState52
                | VAR _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv16)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv18)) : 'freshtv20)
        | ARG_ACCEL | ARG_ANGULARACCEL | ARG_ANGULARSPEED | ARG_PEN | ARG_SPEED | COMMA_ARGS | END_ARGS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
            ((let _v : 'tv_optional_integrate_d = 
# 89 "geomParser.mly"
      (None)
# 1931 "geomParser.ml"
             in
            _menhir_goto_optional_integrate_d _menhir_env _menhir_stack _v) : 'freshtv22)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv23) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv24)) : 'freshtv26)
    | COLON | END_BLOCK | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27) = Obj.magic _menhir_stack in
        ((let _v : 'tv_optional_integrate_args = 
# 86 "geomParser.mly"
      ( Interpreter.Integrate (None,None,(None,None,None,None)) )
# 1946 "geomParser.ml"
         in
        _menhir_goto_optional_integrate_args _menhir_env _menhir_stack _v) : 'freshtv28)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)

and _menhir_goto_program : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 35 "geomParser.mly"
       ((Interpreter.shapeprogram) option)
# 1960 "geomParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 35 "geomParser.mly"
       ((Interpreter.shapeprogram) option)
# 1969 "geomParser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 35 "geomParser.mly"
       ((Interpreter.shapeprogram) option)
# 1977 "geomParser.ml"
    )) : (
# 35 "geomParser.mly"
       ((Interpreter.shapeprogram) option)
# 1981 "geomParser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv12)) : 'freshtv14)

and _menhir_run83 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN_BLOCK ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EMBED ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | INTEGRATE ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | NOP ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | REPEAT ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | TURN ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84) : 'freshtv8)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and program : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 35 "geomParser.mly"
       ((Interpreter.shapeprogram) option)
# 2036 "geomParser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EMBED ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        ((let _1 = () in
        let _v : (
# 35 "geomParser.mly"
       ((Interpreter.shapeprogram) option)
# 2068 "geomParser.ml"
        ) = 
# 38 "geomParser.mly"
                ( None )
# 2072 "geomParser.ml"
         in
        _menhir_goto_program _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2)) : 'freshtv4)
    | INTEGRATE ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NOP ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | REPEAT ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TURN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv6))

# 233 "/home/evelyn/.opam/4.06.1+flambda/lib/menhir/standard.mly"
  

# 2093 "geomParser.ml"
