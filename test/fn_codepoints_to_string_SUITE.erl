-module('fn_codepoints_to_string_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-codepoints-to-string1args-1'/1]).
-export(['fn-codepoints-to-string1args-2'/1]).
-export(['fn-codepoints-to-string1args-3'/1]).
-export(['fn-codepoints-to-string1args-4'/1]).
-export(['fn-codepoints-to-string-1'/1]).
-export(['fn-codepoints-to-string-2'/1]).
-export(['fn-codepoints-to-string-3'/1]).
-export(['fn-codepoints-to-string-4'/1]).
-export(['fn-codepoints-to-string-5'/1]).
-export(['fn-codepoints-to-string-6'/1]).
-export(['fn-codepoints-to-string-7'/1]).
-export(['fn-codepoints-to-string-8'/1]).
-export(['fn-codepoints-to-string-9'/1]).
-export(['fn-codepoints-to-string-10'/1]).
-export(['fn-codepoints-to-string-11'/1]).
-export(['fn-codepoints-to-string-12'/1]).
-export(['fn-codepoints-to-string-13'/1]).
-export(['fn-codepoints-to-string-14'/1]).
-export(['fn-codepoints-to-string-15'/1]).
-export(['fn-codepoints-to-string-16'/1]).
-export(['K-CodepointToStringFunc-1'/1]).
-export(['K-CodepointToStringFunc-2'/1]).
-export(['K-CodepointToStringFunc-3'/1]).
-export(['K-CodepointToStringFunc-4'/1]).
-export(['K-CodepointToStringFunc-5'/1]).
-export(['K-CodepointToStringFunc-6'/1]).
-export(['K-CodepointToStringFunc-7'/1]).
-export(['K-CodepointToStringFunc-8'/1]).
-export(['K-CodepointToStringFunc-8a'/1]).
-export(['K-CodepointToStringFunc-9'/1]).
-export(['K-CodepointToStringFunc-10'/1]).
-export(['K-CodepointToStringFunc-11'/1]).
-export(['K-CodepointToStringFunc-11b'/1]).
-export(['K-CodepointToStringFunc-12'/1]).
-export(['K-CodepointToStringFunc-12b'/1]).
-export(['K-CodepointToStringFunc-13'/1]).
-export(['K-CodepointToStringFunc-14'/1]).
-export(['K-CodepointToStringFunc-15'/1]).
-export(['K-CodepointToStringFunc-16'/1]).
-export(['K-CodepointToStringFunc-17'/1]).
-export(['K-CodepointToStringFunc-18'/1]).
-export(['K-CodepointToStringFunc-19'/1]).
-export(['K-CodepointToStringFunc-20'/1]).
-export(['K-CodepointToStringFunc-21'/1]).
-export(['K-CodepointToStringFunc-22'/1]).
-export(['K-CodepointToStringFunc-23'/1]).
-export(['K-CodepointToStringFunc-24'/1]).
-export(['K-CodepointToStringFunc-25'/1]).
-export(['K-CodepointToStringFunc-26'/1]).
-export(['K-CodepointToStringFunc-27'/1]).
-export(['K-CodepointToStringFunc-28'/1]).
-export(['K-CodepointToStringFunc-29'/1]).
-export(['cbcl-codepoints-to-string-001'/1]).
-export(['cbcl-codepoints-to-string-002'/1]).
-export(['cbcl-codepoints-to-string-003'/1]).
-export(['cbcl-codepoints-to-string-004'/1]).
-export(['cbcl-codepoints-to-string-005'/1]).
-export(['cbcl-codepoints-to-string-006'/1]).
-export(['cbcl-codepoints-to-string-007'/1]).
-export(['cbcl-codepoints-to-string-008'/1]).
-export(['cbcl-codepoints-to-string-009'/1]).
-export(['cbcl-codepoints-to-string-010'/1]).
-export(['cbcl-codepoints-to-string-011'/1]).
-export(['cbcl-codepoints-to-string-012'/1]).
-export(['cbcl-codepoints-to-string-013'/1]).
-export(['cbcl-codepoints-to-string-014'/1]).
-export(['cbcl-codepoints-to-string-015'/1]).
-export(['cbcl-codepoints-to-string-016'/1]).
-export(['cbcl-codepoints-to-string-017'/1]).
-export(['cbcl-codepoints-to-string-018'/1]).
-export(['cbcl-codepoints-to-string-019'/1]).
-export(['cbcl-codepoints-to-string-020'/1]).
-export(['cbcl-codepoints-to-string-021'/1]).
-export(['cbcl-codepoints-to-string-022'/1]).
-export(['cbcl-codepoints-to-string-023'/1]).
-export(['cbcl-codepoints-to-string-024'/1]).
-export(['cbcl-codepoints-to-string-025'/1]).
-export(['cbcl-codepoints-to-string-026'/1]).
-export(['cbcl-codepoints-to-string-027'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "fn")

,[{base_dir, BaseDir}|Config].
all() -> [
   'fn-codepoints-to-string1args-1',
   'fn-codepoints-to-string1args-2',
   'fn-codepoints-to-string1args-3',
   'fn-codepoints-to-string1args-4',
   'fn-codepoints-to-string-1',
   'fn-codepoints-to-string-2',
   'fn-codepoints-to-string-3',
   'fn-codepoints-to-string-4',
   'fn-codepoints-to-string-5',
   'fn-codepoints-to-string-6',
   'fn-codepoints-to-string-7',
   'fn-codepoints-to-string-8',
   'fn-codepoints-to-string-9',
   'fn-codepoints-to-string-10',
   'fn-codepoints-to-string-11',
   'fn-codepoints-to-string-12',
   'fn-codepoints-to-string-13',
   'fn-codepoints-to-string-14',
   'fn-codepoints-to-string-15',
   'fn-codepoints-to-string-16',
   'K-CodepointToStringFunc-1',
   'K-CodepointToStringFunc-2',
   'K-CodepointToStringFunc-3',
   'K-CodepointToStringFunc-4',
   'K-CodepointToStringFunc-5',
   'K-CodepointToStringFunc-6',
   'K-CodepointToStringFunc-7',
   'K-CodepointToStringFunc-8',
   'K-CodepointToStringFunc-8a',
   'K-CodepointToStringFunc-9',
   'K-CodepointToStringFunc-10',
   'K-CodepointToStringFunc-11',
   'K-CodepointToStringFunc-11b',
   'K-CodepointToStringFunc-12',
   'K-CodepointToStringFunc-12b',
   'K-CodepointToStringFunc-13',
   'K-CodepointToStringFunc-14',
   'K-CodepointToStringFunc-15',
   'K-CodepointToStringFunc-16',
   'K-CodepointToStringFunc-17',
   'K-CodepointToStringFunc-18',
   'K-CodepointToStringFunc-19',
   'K-CodepointToStringFunc-20',
   'K-CodepointToStringFunc-21',
   'K-CodepointToStringFunc-22',
   'K-CodepointToStringFunc-23',
   'K-CodepointToStringFunc-24',
   'K-CodepointToStringFunc-25',
   'K-CodepointToStringFunc-26',
   'K-CodepointToStringFunc-27',
   'K-CodepointToStringFunc-28',
   'K-CodepointToStringFunc-29',
   'cbcl-codepoints-to-string-001',
   'cbcl-codepoints-to-string-002',
   'cbcl-codepoints-to-string-003',
   'cbcl-codepoints-to-string-004',
   'cbcl-codepoints-to-string-005',
   'cbcl-codepoints-to-string-006',
   'cbcl-codepoints-to-string-007',
   'cbcl-codepoints-to-string-008',
   'cbcl-codepoints-to-string-009',
   'cbcl-codepoints-to-string-010',
   'cbcl-codepoints-to-string-011',
   'cbcl-codepoints-to-string-012',
   'cbcl-codepoints-to-string-013',
   'cbcl-codepoints-to-string-014',
   'cbcl-codepoints-to-string-015',
   'cbcl-codepoints-to-string-016',
   'cbcl-codepoints-to-string-017',
   'cbcl-codepoints-to-string-018',
   'cbcl-codepoints-to-string-019',
   'cbcl-codepoints-to-string-020',
   'cbcl-codepoints-to-string-021',
   'cbcl-codepoints-to-string-022',
   'cbcl-codepoints-to-string-023',
   'cbcl-codepoints-to-string-024',
   'cbcl-codepoints-to-string-025',
   'cbcl-codepoints-to-string-026',
   'cbcl-codepoints-to-string-027'].
environment('empty',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works-mod.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/staff.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), "$works",""},
{filename:join(BaseDir, "../docs/staff.xml"), "$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/auction.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('qname',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/QName-source.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "../docs/QName-schema.xsd"),"http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'fn-codepoints-to-string1args-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string((98,223,1682,12365,63744))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-codepoints-to-string1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "bßڒき豈") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-codepoints-to-string1args-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-codepoints-to-string1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-codepoints-to-string1args-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string('hello')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-codepoints-to-string1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-codepoints-to-string1args-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string((),())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-codepoints-to-string1args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-codepoints-to-string-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoints-to-string(0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-codepoints-to-string-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-codepoints-to-string-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoints-to-string(10000000)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-codepoints-to-string-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-codepoints-to-string-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoints-to-string(49)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-codepoints-to-string-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-codepoints-to-string-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoints-to-string(97)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-codepoints-to-string-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-codepoints-to-string-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoints-to-string((49,97))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-codepoints-to-string-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1a") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-codepoints-to-string-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoints-to-string((35, 42, 94, 36))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-codepoints-to-string-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "#*^$") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-codepoints-to-string-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoints-to-string((99,111,100,101,112,111,105,110,116,115,45,116,111,45,115,116,114,105,110,103))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-codepoints-to-string-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "codepoints-to-string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-codepoints-to-string-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xs:string(fn:codepoints-to-string((65,32,83,116,114,105,110,103)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-codepoints-to-string-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "A String") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-codepoints-to-string-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:upper-case(fn:codepoints-to-string((65,32,83,84,82,73,78,71)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-codepoints-to-string-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "A STRING") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-codepoints-to-string-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:lower-case(fn:codepoints-to-string((97,32,115,116,114,105,110,103)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-codepoints-to-string-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-codepoints-to-string-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoints-to-string(xs:integer(97))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-codepoints-to-string-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-codepoints-to-string-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoints-to-string(xs:integer(fn:avg((65,32,83,116,114,105,110,103))))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-codepoints-to-string-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-codepoints-to-string-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:concat(fn:codepoints-to-string((49,97)),\"1a\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-codepoints-to-string-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1a1a") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-codepoints-to-string-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-to-codepoints(fn:codepoints-to-string((49,97)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-codepoints-to-string-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"49, 97") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-codepoints-to-string-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-length(fn:codepoints-to-string((49,97)))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-codepoints-to-string-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-codepoints-to-string-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:string-join((fn:codepoints-to-string((49,97)),'ab'),'')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-codepoints-to-string-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1aab") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string((84, 104), \"INVALID\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(()) eq \"\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string((87, 36, 56, 87, 102, 96)) eq \"W$8Wf`\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(57343)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(-500)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(8)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-8a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XML 1.1"}.
'K-CodepointToStringFunc-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(9) eq \"	\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(10) eq \"
\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(11)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-11b'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XML 1.1"}.
'K-CodepointToStringFunc-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(12)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-12b'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XML 1.1"}.
'K-CodepointToStringFunc-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(13) eq \"&#xD;\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "string-to-codepoints(codepoints-to-string(14))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"14") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "string-to-codepoints(codepoints-to-string(31))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"31") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(32) eq \" \"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(27637) eq \"毵\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(55295) eq \"퟿\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(55296)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(57343)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-21'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(57344) eq \"\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-22'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(61438) eq \"\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-23'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(65533) eq \"�\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-24'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(65534)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-25'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(65535)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-26'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(65536) eq \"𐀀\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-27'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(589823) eq \"򏿿\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-28'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(1114111) eq \"􏿿\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-CodepointToStringFunc-29'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "codepoints-to-string(1114112)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-CodepointToStringFunc-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:test($test as xs:integer) as xs:integer? { 
          if ($test = 1) then ( 0 ) else if ($test = 2) then ( 9 ) else if ($test = 3) then ( 13 ) else if ($test = 4) then ( 16 ) else () 
        }; 
        fn:codepoints-to-string( local:test(1) to 32 )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:test($test as xs:integer) as xs:integer? { 
          if ($test = 1) then ( 0 ) else if ($test = 2) then ( 9 ) else if ($test = 3) then ( 13 ) else if ($test = 4) then ( 16 ) else () 
        }; 
        fn:codepoints-to-string( local:test(2) to 32 )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      declare function local:test($test as xs:integer) as xs:integer? { 
        if ($test = 1) then ( 0 ) else if ($test = 2) then ( 9 ) else if ($test = 3) then ( 13 )else if ($test = 4) then ( 16 ) else () 
      }; 
      fn:codepoints-to-string( local:test(3) to 32 )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-004'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:test($test as xs:integer) as xs:integer? { 
        if ($test = 1) then ( 0 ) else if ($test = 2) then ( 9 ) else if ($test = 3) then ( 13 ) else if ($test = 4) then ( 16 ) else () 
      }; 
      fn:codepoints-to-string( local:test(4) to 32 )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-005'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoints-to-string( 65536 to 1114112 )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-006'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoints-to-string( 55295 to 55297 )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-007'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoints-to-string( 55296 to 57343 )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-008'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoints-to-string( 65535 to 70000 )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-009'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:codepoints-to-string( 65530 to 70000 )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-010'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:boolean(fn:codepoints-to-string( 65 to 76 ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-011'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:boolean(fn:codepoints-to-string( 0 ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-012'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:boolean(fn:codepoints-to-string( 999999999 ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-013'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:boolean(fn:codepoints-to-string( 65 ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-014'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:boolean(fn:codepoints-to-string( () ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-015'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal( fn:string-to-codepoints(fn:codepoints-to-string(65536 to 66000)), 65536 to 66000 )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-016'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "deep-equal( fn:string-to-codepoints(fn:codepoints-to-string(65536 to 100000)), 65536 to 100000 )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-017'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $x in 32 to 64 return boolean(codepoints-to-string($x to $x + 10))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-018'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "if(5 < exactly-one((1 to 10)[. div 2 = 5])) then codepoints-to-string(32 to exactly-one((1 to 100)[. div 2 = 40])) else ()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOP") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-019'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $x in 65 to 75 return string-length(codepoints-to-string($x to $x+10))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "11 11 11 11 11 11 11 11 11 11 11") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-020'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $x in 65 to 75 return boolean(codepoints-to-string($x[. mod 2 = 0] to ($x+9)[. mod 2 = 0]))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "false false false false false false false false false false false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-021'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip," HUGE RANGE "}.
'cbcl-codepoints-to-string-022'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip," HUGE RANGE "}.
'cbcl-codepoints-to-string-023'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $x in 9 to 15 return codepoints-to-string($x to $x)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-024'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $x in 13 to 15 return codepoints-to-string($x to $x)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-024.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-025'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $x in 9 to 9 return codepoints-to-string($x to $x+1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-025.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'	
'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-026'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $x in 13 to 13 return codepoints-to-string($x to $x)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-026.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-codepoints-to-string-027'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "for $x in (13), $y in (13,9,10) return codepoints-to-string($x to $y)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-codepoints-to-string-027.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "  ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
