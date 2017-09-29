-module('fn_generate_id_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['generate-id-000'/1]).
-export(['generate-id-001'/1]).
-export(['generate-id-002'/1]).
-export(['generate-id-003'/1]).
-export(['generate-id-004'/1]).
-export(['generate-id-005'/1]).
-export(['generate-id-006'/1]).
-export(['generate-id-007'/1]).
-export(['generate-id-008'/1]).
-export(['generate-id-009'/1]).
-export(['generate-id-010'/1]).
-export(['generate-id-011'/1]).
-export(['generate-id-012'/1]).
-export(['generate-id-013'/1]).
-export(['generate-id-014'/1]).
-export(['generate-id-015'/1]).
-export(['generate-id-016'/1]).
-export(['generate-id-017'/1]).
-export(['generate-id-018'/1]).
-export(['generate-id-901'/1]).
-export(['generate-id-902'/1]).
-export(['generate-id-903'/1]).
-export(['generate-id-904'/1]).
-export(['generate-id-905'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/fn/id/copy.xq") catch _:_ -> ok end,Config.
all() -> [
   'generate-id-000',
   'generate-id-001',
   'generate-id-002',
   'generate-id-003',
   'generate-id-004',
   'generate-id-005',
   'generate-id-006',
   'generate-id-007',
   'generate-id-008',
   'generate-id-009',
   'generate-id-010',
   'generate-id-011',
   'generate-id-012',
   'generate-id-013',
   'generate-id-014',
   'generate-id-015',
   'generate-id-016',
   'generate-id-017',
   'generate-id-018',
   'generate-id-901',
   'generate-id-902',
   'generate-id-903',
   'generate-id-904',
   'generate-id-905'].
environment('empty') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('collection') ->
[{sources, []},
{schemas, []},
{collections, [{"",["file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works-mod.xml",
"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/auction.xml"]}]},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'generate-id-000'(_Config) ->
   Qry = "generate-id(())",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            xs:string
            \"\"
         
      ",
 case  begin Tst2 = xqerl:run("\"\""),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'generate-id-001'(_Config) ->
   Qry = "generate-id(/*)",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         matches($result, '^[A-Za-z][A-Za-z0-9]*$')
      ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""matches($result, '^[A-Za-z][A-Za-z0-9]*$')",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'generate-id-002'(_Config) ->
   Qry = "generate-id((//@*)[1])",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         matches($result, '^[A-Za-z][A-Za-z0-9]*$')
      ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""matches($result, '^[A-Za-z][A-Za-z0-9]*$')",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'generate-id-003'(_Config) ->
   Qry = "generate-id(/)",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         matches($result, '^[A-Za-z][A-Za-z0-9]*$')
      ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""matches($result, '^[A-Za-z][A-Za-z0-9]*$')",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'generate-id-004'(_Config) ->
   Qry = "generate-id((//comment())[1])",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         matches($result, '^[A-Za-z][A-Za-z0-9]*$')
      ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""matches($result, '^[A-Za-z][A-Za-z0-9]*$')",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'generate-id-005'(_Config) ->
   Qry = "generate-id((//processing-instruction())[1])",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         matches($result, '^[A-Za-z][A-Za-z0-9]*$')
      ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""matches($result, '^[A-Za-z][A-Za-z0-9]*$')",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'generate-id-006'(_Config) ->
   Qry = "generate-id((//text())[1])",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         matches($result, '^[A-Za-z][A-Za-z0-9]*$')
      ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""matches($result, '^[A-Za-z][A-Za-z0-9]*$')",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'generate-id-007'(_Config) ->
   {skip,"XP20+"}.
'generate-id-008'(_Config) ->
   Qry = "generate-id() eq generate-id(/)",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generate-id-009'(_Config) ->
   Qry = "/*/(generate-id() eq generate-id(.))",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generate-id-010'(_Config) ->
   Qry = "let $nodes := (/ | //*/(.|@*|comment()|processing-instruction()|text())) 
            return count($nodes) eq count(distinct-values($nodes/generate-id()))",
   Env = xqerl_test:handle_environment(environment('auction')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generate-id-011'(_Config) ->
   {skip,"XP20+"}.
'generate-id-012'(_Config) ->
   Qry = "let $nodes := collection()
            return count($nodes) eq count(distinct-values($nodes/generate-id()))",
   Env = xqerl_test:handle_environment(environment('collection')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generate-id-013'(_Config) ->
   Qry = "let $nodes := collection()//*
            return count($nodes) eq count(distinct-values($nodes/generate-id()))",
   Env = xqerl_test:handle_environment(environment('collection')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'generate-id-014'(_Config) ->
   Qry = "
        import module namespace copy=\"http://www.w3.org/QT3/copy\";
        generate-id(copy:copy(/*))
      ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         matches($result, '^[A-Za-z][A-Za-z0-9]*$')
      ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""matches($result, '^[A-Za-z][A-Za-z0-9]*$')",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'generate-id-015'(_Config) ->
   Qry = "
        import module namespace copy=\"http://www.w3.org/QT3/copy\";
        generate-id(copy:copy((//@*)[1]))
      ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         matches($result, '^[A-Za-z][A-Za-z0-9]*$')
      ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""matches($result, '^[A-Za-z][A-Za-z0-9]*$')",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'generate-id-016'(_Config) ->
   Qry = "
        import module namespace copy=\"http://www.w3.org/QT3/copy\";
        generate-id(copy:copy(/*)) eq generate-id(/*)
      ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generate-id-017'(_Config) ->
   Qry = "
        import module namespace copy=\"http://www.w3.org/QT3/copy\";
        let $att := (//@*)[1] return generate-id(copy:copy($att)) eq generate-id($att)
      ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'generate-id-018'(_Config) ->
   {skip,"xpath-1.0-compatibility"}.
'generate-id-901'(_Config) ->
   Qry = "let $f := function() {generate-id()} return $f()",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'generate-id-902'(_Config) ->
   Qry = "let $f := function($x as item()) {generate-id($x)} return $f(3)",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'generate-id-903'(_Config) ->
   Qry = "for $i in 1 to 20 return generate-id($i)",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'generate-id-904'(_Config) ->
   Qry = "let $f := function($x as item()) {\"\"} return generate-id($f)",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'generate-id-905'(_Config) ->
   Qry = "generate-id(//*)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
