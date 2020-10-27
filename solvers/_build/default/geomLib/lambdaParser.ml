
module MenhirBasics = struct
  
  exception Error
  
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
  | MenhirState49
  | MenhirState48
  | MenhirState46
  | MenhirState45
  | MenhirState43
  | MenhirState42
  | MenhirState38
  | MenhirState36
  | MenhirState35
  | MenhirState33
  | MenhirState32
  | MenhirState31
  | MenhirState21
  | MenhirState17
  | MenhirState13
  | MenhirState12
  | MenhirState11
  | MenhirState10
  | MenhirState9
  | MenhirState8
  | MenhirState6
  | MenhirState5
  | MenhirState3
  | MenhirState2

let rec _menhir_goto_someb : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_someb -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv187 * _menhir_state) * _menhir_state * 'tv_someb) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv183 * _menhir_state) * _menhir_state * 'tv_someb) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv181 * _menhir_state) * _menhir_state * 'tv_someb) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (b : 'tv_someb)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_someb = 
# 68 "lambdaParser.mly"
      ( b )
# 96 "lambdaParser.ml"
             in
            _menhir_goto_someb _menhir_env _menhir_stack _menhir_s _v) : 'freshtv182)) : 'freshtv184)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv185 * _menhir_state) * _menhir_state * 'tv_someb) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)) : 'freshtv188)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv189 * _menhir_state) * _menhir_state * 'tv_somev) * _menhir_state * 'tv_someb) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | JUST ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LP ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | NOTHING ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv190)
    | _ ->
        _menhir_fail ()

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv179) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_someb = 
# 72 "lambdaParser.mly"
      ( true )
# 135 "lambdaParser.ml"
     in
    _menhir_goto_someb _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | LP ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | TRUE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv177) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_someb = 
# 74 "lambdaParser.mly"
      ( false )
# 166 "lambdaParser.ml"
     in
    _menhir_goto_someb _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_somev : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_somev -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state) * _menhir_state * 'tv_somev) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv157 * _menhir_state) * _menhir_state * 'tv_somev) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv155 * _menhir_state) * _menhir_state * 'tv_somev) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (s : 'tv_somev)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_somev = 
# 37 "lambdaParser.mly"
      ( s )
# 197 "lambdaParser.ml"
             in
            _menhir_goto_somev _menhir_env _menhir_stack _menhir_s _v) : 'freshtv156)) : 'freshtv158)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv159 * _menhir_state) * _menhir_state * 'tv_somev) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)) : 'freshtv162)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv165 * _menhir_state) * _menhir_state * 'tv_somev) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * _menhir_state) * _menhir_state * 'tv_somev) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (s : 'tv_somev)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = 
# 88 "lambdaParser.mly"
      ( Plumbing.turn s )
# 217 "lambdaParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv164)) : 'freshtv166)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv167 * _menhir_state) * _menhir_state * 'tv_somev) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCAT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | DEFINE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | EMBED ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | INTEGRATE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LINE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LP ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | REPEAT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | TURN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv168)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state) * _menhir_state * 'tv_somev) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | LP ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | TRUE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv170)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv171 * _menhir_state) * _menhir_state * 'tv_somev) * _menhir_state * 'tv_someb) * _menhir_state * 'tv_somev) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | JUST ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | LP ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | NOTHING ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43) : 'freshtv172)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv175 * _menhir_state) * _menhir_state * 'tv_somev) * _menhir_state * 'tv_someb) * _menhir_state * 'tv_somev) * _menhir_state * 'tv_somev) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv173 * _menhir_state) * _menhir_state * 'tv_somev) * _menhir_state * 'tv_someb) * _menhir_state * 'tv_somev) * _menhir_state * 'tv_somev) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s), _, (v1 : 'tv_somev)), _, (b : 'tv_someb)), _, (v2 : 'tv_somev)), _, (v3 : 'tv_somev)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = 
# 98 "lambdaParser.mly"
      ( Plumbing.integrate v1 b v2 v3 )
# 288 "lambdaParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)) : 'freshtv176)
    | _ ->
        _menhir_fail ()

and _menhir_goto_var : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_var -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv119 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv115 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv113 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (v : 'tv_var)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_var = 
# 44 "lambdaParser.mly"
      ( v )
# 316 "lambdaParser.ml"
             in
            _menhir_goto_var _menhir_env _menhir_stack _menhir_s _v) : 'freshtv114)) : 'freshtv116)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv117 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)) : 'freshtv120)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (v : 'tv_var)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_var = 
# 58 "lambdaParser.mly"
      ( Plumbing.var_double v )
# 336 "lambdaParser.ml"
         in
        _menhir_goto_var _menhir_env _menhir_stack _menhir_s _v) : 'freshtv122)) : 'freshtv124)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv125 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LP ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | NAME ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | V_2 ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | V_3 ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | V_D ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | V_Di ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | V_H ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | V_N ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | V_O ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | V_P ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | V_U ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv126)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv129 * _menhir_state) * _menhir_state * 'tv_var) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv127 * _menhir_state) * _menhir_state * 'tv_var) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (v : 'tv_var)), _, (v2 : 'tv_var)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_var = 
# 60 "lambdaParser.mly"
      ( Plumbing.var_divide v v2 )
# 381 "lambdaParser.ml"
         in
        _menhir_goto_var _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)) : 'freshtv130)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv133 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv131 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (v : 'tv_var)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_var = 
# 62 "lambdaParser.mly"
      ( Plumbing.var_half v )
# 394 "lambdaParser.ml"
         in
        _menhir_goto_var _menhir_env _menhir_stack _menhir_s _v) : 'freshtv132)) : 'freshtv134)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv137 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv135 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (v : 'tv_var)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_var = 
# 54 "lambdaParser.mly"
      ( Plumbing.var_next v )
# 407 "lambdaParser.ml"
         in
        _menhir_goto_var _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)) : 'freshtv138)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv141 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv139 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (v : 'tv_var)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_var = 
# 64 "lambdaParser.mly"
      ( Plumbing.var_opposite v )
# 420 "lambdaParser.ml"
         in
        _menhir_goto_var _menhir_env _menhir_stack _menhir_s _v) : 'freshtv140)) : 'freshtv142)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv145 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (v : 'tv_var)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_var = 
# 56 "lambdaParser.mly"
      ( Plumbing.var_prev v )
# 433 "lambdaParser.ml"
         in
        _menhir_goto_var _menhir_env _menhir_stack _menhir_s _v) : 'freshtv144)) : 'freshtv146)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv149 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (v : 'tv_var)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_somev = 
# 41 "lambdaParser.mly"
      ( Some (v) )
# 446 "lambdaParser.ml"
         in
        _menhir_goto_somev _menhir_env _menhir_stack _menhir_s _v) : 'freshtv148)) : 'freshtv150)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv153 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv151 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (v : 'tv_var)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = 
# 82 "lambdaParser.mly"
      ( Plumbing.define v )
# 459 "lambdaParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv152)) : 'freshtv154)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCAT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | DEFINE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | EMBED ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | INTEGRATE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | LINE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | LP ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | REPEAT ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | TURN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49) : 'freshtv80)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv83 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv81 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = 
# 80 "lambdaParser.mly"
      ( Plumbing.concat e1 e2 )
# 505 "lambdaParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv82)) : 'freshtv84)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = 
# 86 "lambdaParser.mly"
      ( Plumbing.embed e )
# 518 "lambdaParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv86)) : 'freshtv88)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv91 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv89 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 78 "lambdaParser.mly"
      ( e )
# 539 "lambdaParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv90)) : 'freshtv92)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv93 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)) : 'freshtv96)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv99 * _menhir_state) * _menhir_state * 'tv_somev) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv97 * _menhir_state) * _menhir_state * 'tv_somev) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (v : 'tv_somev)), _, (e : 'tv_expr)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = 
# 90 "lambdaParser.mly"
      ( Plumbing.repeat v e )
# 559 "lambdaParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv98)) : 'freshtv100)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv111)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv107)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv103)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv101)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _, (e : 'tv_expr)) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : (
# 27 "lambdaParser.mly"
       ((Interpreter.shapeprogram) option)
# 587 "lambdaParser.ml"
                ) = 
# 33 "lambdaParser.mly"
        ( Some (e) )
# 591 "lambdaParser.ml"
                 in
                _menhir_goto_program _menhir_env _menhir_stack _v) : 'freshtv102)) : 'freshtv104)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv105)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)) : 'freshtv108)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv109)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)) : 'freshtv112)
    | _ ->
        _menhir_fail ()

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv77) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_somev = 
# 39 "lambdaParser.mly"
      ( None )
# 621 "lambdaParser.ml"
     in
    _menhir_goto_somev _menhir_env _menhir_stack _menhir_s _v) : 'freshtv78)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | JUST ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | LP ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | NOTHING ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | NAME ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | V_2 ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | V_3 ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | V_D ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | V_Di ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | V_H ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | V_N ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | V_O ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | V_P ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | V_U ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv75) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_var = 
# 46 "lambdaParser.mly"
      ( Plumbing.var_unit )
# 685 "lambdaParser.ml"
     in
    _menhir_goto_var _menhir_env _menhir_stack _menhir_s _v) : 'freshtv76)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | NAME ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | V_2 ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | V_3 ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | V_D ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | V_Di ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | V_H ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | V_N ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | V_O ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | V_P ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | V_U ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | NAME ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | V_2 ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | V_3 ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | V_D ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | V_Di ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | V_H ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | V_N ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | V_O ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | V_P ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | V_U ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | NAME ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | V_2 ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | V_3 ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | V_D ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | V_Di ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | V_H ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | V_N ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | V_O ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | V_P ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | V_U ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | NAME ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | V_2 ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | V_3 ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | V_D ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | V_Di ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | V_H ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | V_N ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | V_O ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | V_P ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | V_U ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | NAME ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | V_2 ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | V_3 ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | V_D ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | V_Di ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | V_H ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | V_N ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | V_O ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | V_P ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | V_U ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | NAME ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | V_2 ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | V_3 ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | V_D ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | V_Di ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | V_H ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | V_N ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | V_O ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | V_P ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | V_U ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv73) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_var = 
# 50 "lambdaParser.mly"
      ( Plumbing.var_three )
# 897 "lambdaParser.ml"
     in
    _menhir_goto_var _menhir_env _menhir_stack _menhir_s _v) : 'freshtv74)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv71) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_var = 
# 48 "lambdaParser.mly"
      ( Plumbing.var_two )
# 911 "lambdaParser.ml"
     in
    _menhir_goto_var _menhir_env _menhir_stack _menhir_s _v) : 'freshtv72)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv69) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_var = 
# 52 "lambdaParser.mly"
      ( Plumbing.var_name )
# 925 "lambdaParser.ml"
     in
    _menhir_goto_var _menhir_env _menhir_stack _menhir_s _v) : 'freshtv70)

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | NAME ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | V_2 ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | V_3 ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | V_D ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | V_Di ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | V_H ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | V_N ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | V_O ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | V_P ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | V_U ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv21 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv29 * _menhir_state) * _menhir_state * 'tv_somev) * _menhir_state * 'tv_someb) * _menhir_state * 'tv_somev) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv31 * _menhir_state) * _menhir_state * 'tv_somev) * _menhir_state * 'tv_someb) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35 * _menhir_state) * _menhir_state * 'tv_somev) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state) * _menhir_state * 'tv_somev) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv68)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | JUST ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | LP ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | NOTHING ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | JUST ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | LP ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | NOTHING ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONCAT ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | DEFINE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | EMBED ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | INTEGRATE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LINE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LP ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | REPEAT ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | TURN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expr = 
# 84 "lambdaParser.mly"
      ( Plumbing.basic_line )
# 1156 "lambdaParser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv20)

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | JUST ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LP ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | NOTHING ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONCAT ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | DEFINE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | EMBED ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | INTEGRATE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LINE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LP ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | REPEAT ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | TURN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | NAME ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | V_2 ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | V_3 ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | V_D ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | V_Di ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | V_H ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | V_N ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | V_O ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | V_P ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | V_U ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run48 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONCAT ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | DEFINE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | EMBED ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | INTEGRATE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LINE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LP ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | REPEAT ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | TURN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

and _menhir_goto_program : _menhir_env -> 'ttv_tail -> (
# 27 "lambdaParser.mly"
       ((Interpreter.shapeprogram) option)
# 1267 "lambdaParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
    let (_v : (
# 27 "lambdaParser.mly"
       ((Interpreter.shapeprogram) option)
# 1275 "lambdaParser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
    let ((_1 : (
# 27 "lambdaParser.mly"
       ((Interpreter.shapeprogram) option)
# 1282 "lambdaParser.ml"
    )) : (
# 27 "lambdaParser.mly"
       ((Interpreter.shapeprogram) option)
# 1286 "lambdaParser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv16)) : 'freshtv18)

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
# 27 "lambdaParser.mly"
       ((Interpreter.shapeprogram) option)
# 1305 "lambdaParser.ml"
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
    let (_menhir_stack : 'freshtv13) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        ((let _1 = () in
        let _v : (
# 27 "lambdaParser.mly"
       ((Interpreter.shapeprogram) option)
# 1333 "lambdaParser.ml"
        ) = 
# 31 "lambdaParser.mly"
        ( None     )
# 1337 "lambdaParser.ml"
         in
        _menhir_goto_program _menhir_env _menhir_stack _v) : 'freshtv2)) : 'freshtv4)
    | LP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RUN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONCAT ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState2
            | DEFINE ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState2
            | EMBED ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState2
            | INTEGRATE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState2
            | LINE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState2
            | LP ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState2
            | REPEAT ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState2
            | TURN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv6)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv8)) : 'freshtv10)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv12)) : 'freshtv14))

# 233 "/home/evelyn/.opam/4.06.1+flambda/lib/menhir/standard.mly"
  

# 1388 "lambdaParser.ml"
