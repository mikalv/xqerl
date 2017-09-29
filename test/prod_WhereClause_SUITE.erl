-module('prod_WhereClause_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['WhereExpr001'/1]).
-export(['WhereExpr002'/1]).
-export(['WhereExpr003'/1]).
-export(['WhereExpr004'/1]).
-export(['WhereExpr005'/1]).
-export(['WhereExpr006'/1]).
-export(['WhereExpr007'/1]).
-export(['WhereExpr008'/1]).
-export(['WhereExpr009'/1]).
-export(['WhereExpr010'/1]).
-export(['WhereExpr013'/1]).
-export(['WhereExpr014'/1]).
-export(['WhereExpr015'/1]).
-export(['WhereExpr016'/1]).
-export(['WhereExpr017'/1]).
-export(['WhereExpr018'/1]).
-export(['WhereExpr019'/1]).
-export(['WhereExpr020'/1]).
-export(['WhereExpr020a'/1]).
-export(['WhereExpr021'/1]).
-export(['WhereExpr022'/1]).
-export(['WhereExpr023'/1]).
-export(['WhereExpr024'/1]).
-export(['WhereExpr025'/1]).
-export(['WhereExpr026'/1]).
-export(['WhereExpr027'/1]).
-export(['WhereExpr028'/1]).
-export(['WhereExpr029'/1]).
-export(['WhereExpr030'/1]).
-export(['WhereExpr031'/1]).
-export(['WhereExpr032'/1]).
-export(['WhereExpr033'/1]).
-export(['whereClause-1'/1]).
-export(['whereClause-2'/1]).
-export(['whereClause-3'/1]).
-export(['whereClause-4'/1]).
-export(['whereClause-5'/1]).
-export(['whereClause-6'/1]).
-export(['whereClause-7'/1]).
-export(['whereClause-8'/1]).
-export(['whereClause-9'/1]).
-export(['whereClause-10'/1]).
-export(['whereClause-11'/1]).
-export(['K-WhereExpr-1'/1]).
-export(['K-WhereExpr-2'/1]).
-export(['K-WhereExpr-3'/1]).
-export(['K-WhereExpr-4'/1]).
-export(['K-WhereExpr-5'/1]).
-export(['K-WhereExpr-6'/1]).
-export(['K-WhereExpr-7'/1]).
-export(['K-WhereExpr-8'/1]).
-export(['K-WhereExpr-9'/1]).
-export(['K-WhereExpr-10'/1]).
-export(['K-WhereExpr-11'/1]).
-export(['K2-WhereExpr-1'/1]).
-export(['K2-WhereExpr-1b'/1]).
-export(['K2-WhereExpr-2'/1]).
-export(['cbcl-hash-join-1'/1]).
-export(['cbcl-hash-join-2'/1]).
-export(['cbcl-hash-join-3'/1]).
-export(['cbcl-hash-join-4'/1]).
-export(['cbcl-hash-join-005'/1]).
-export(['cbcl-product-001'/1]).
-export(['cbcl-set-from-optional-item-001'/1]).
-export(['cbcl-hash-join-006'/1]).
-export(['cbcl-hash-join-007'/1]).
-export(['cbcl-hash-join-008'/1]).
-export(['cbcl-hash-join-009'/1]).
-export(['cbcl-hash-join-010'/1]).
-export(['cbcl-group-by-key-001'/1]).
-export(['cbcl-group-by-key-002'/1]).
-export(['cbcl-group-by-key-003'/1]).
-export(['cbcl-group-by-key-004'/1]).
-export(['cbcl-left-outer-join-001'/1]).
-export(['cbcl-hash-join-011'/1]).
-export(['cbcl-map-concat-001'/1]).
-export(['cbcl-map-concat-002'/1]).
-export(['cbcl-map-concat-003'/1]).
-export(['cbcl-left-outer-join-002'/1]).
-export(['cbcl-left-outer-join-003'/1]).
-export(['cbcl-left-outer-join-004'/1]).
-export(['cbcl-hash-join-012'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'WhereExpr001',
   'WhereExpr002',
   'WhereExpr003',
   'WhereExpr004',
   'WhereExpr005',
   'WhereExpr006',
   'WhereExpr007',
   'WhereExpr008',
   'WhereExpr009',
   'WhereExpr010',
   'WhereExpr013',
   'WhereExpr014',
   'WhereExpr015',
   'WhereExpr016',
   'WhereExpr017',
   'WhereExpr018',
   'WhereExpr019',
   'WhereExpr020',
   'WhereExpr020a',
   'WhereExpr021',
   'WhereExpr022',
   'WhereExpr023',
   'WhereExpr024',
   'WhereExpr025',
   'WhereExpr026',
   'WhereExpr027',
   'WhereExpr028',
   'WhereExpr029',
   'WhereExpr030',
   'WhereExpr031',
   'WhereExpr032',
   'WhereExpr033',
   'whereClause-1',
   'whereClause-2',
   'whereClause-3',
   'whereClause-4',
   'whereClause-5',
   'whereClause-6',
   'whereClause-7',
   'whereClause-8',
   'whereClause-9',
   'whereClause-10',
   'whereClause-11',
   'K-WhereExpr-1',
   'K-WhereExpr-2',
   'K-WhereExpr-3',
   'K-WhereExpr-4',
   'K-WhereExpr-5',
   'K-WhereExpr-6',
   'K-WhereExpr-7',
   'K-WhereExpr-8',
   'K-WhereExpr-9',
   'K-WhereExpr-10',
   'K-WhereExpr-11',
   'K2-WhereExpr-1',
   'K2-WhereExpr-1b',
   'K2-WhereExpr-2',
   'cbcl-hash-join-1',
   'cbcl-hash-join-2',
   'cbcl-hash-join-3',
   'cbcl-hash-join-4',
   'cbcl-hash-join-005',
   'cbcl-product-001',
   'cbcl-set-from-optional-item-001',
   'cbcl-hash-join-006',
   'cbcl-hash-join-007',
   'cbcl-hash-join-008',
   'cbcl-hash-join-009',
   'cbcl-hash-join-010',
   'cbcl-group-by-key-001',
   'cbcl-group-by-key-002',
   'cbcl-group-by-key-003',
   'cbcl-group-by-key-004',
   'cbcl-left-outer-join-001',
   'cbcl-hash-join-011',
   'cbcl-map-concat-001',
   'cbcl-map-concat-002',
   'cbcl-map-concat-003',
   'cbcl-left-outer-join-002',
   'cbcl-left-outer-join-003',
   'cbcl-left-outer-join-004',
   'cbcl-hash-join-012'].
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
environment('fsx') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/ForClause/fsx.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'WhereExpr001'(_Config) ->
   Qry = "if ( count( for $f in //* where $f/File return $f/File[1] ) = count( //File[1]) ) then <Same/> else <notSame/>",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <Same />
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<Same />"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<Same />" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WhereExpr002'(_Config) ->
   Qry = "for $folder in //Folder where $folde/@name = \"ABC\" return <folder/>",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0008" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0008'}) end.
'WhereExpr003'(_Config) ->
   Qry = "for $d in /MyComputer/Drive4 where $d/Folder[@id=\"128\"] return <FolderName>{$d/Folder/@name}</FolderName>",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <FolderName name=\"Folder00000000047\" />
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<FolderName name=\"Folder00000000047\" />"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<FolderName name=\"Folder00000000047\" />" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WhereExpr004'(_Config) ->
   Qry = "for $f in /MyComputer/Drive1/Folder[@creator=\"Mani\"]/File where $f/@creation_date=\"08/06/00\" return $f",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <File creation_date=\"08/06/00\" creator=\"Leon\" name=\"File00000000000\" type=\"FileType\" idref=\"1\" id=\"2\">
				<FileName>File00000000000</FileName>
				<description> abides fullest charms aprons batter perspective brags yesterday honor bluest<bold> wills crimeful calm lobby truer miser perseus take</bold> tapers owe ceas rhyme mindful surly suspect fantasticoes spirits legitimation holofernes portraiture trouts suffocating deed strides ithaca<bold> smiles sunshine loud right disdainfully figs searching</bold> curl reins humble nurture hue doom hidden abridgement seein<bold> invisible authentic shapes quae several reaches howled</bold> merry purpos howl burneth scholars untreasur maidenliest dealing</description>
				<SecurityObject name=\"so00000000001\">
					<Denies>
						<Deny>
							<security/>
							<user>system\\Changyuan</user>
						</Deny>
						<Deny>
							<security>
								<right>Read</right>
							</security>
							<user>system\\Toshiko</user>
						</Deny>
					</Denies>
					<Allows>
						<Allow>
							<security>
								<right>Read</right>
								<right>Write</right>
							</security>
							<user>system\\Hyungjeong</user>
						</Allow>
					</Allows>
				</SecurityObject>
				<Stream binary=\"false\" streamid=\"1\" content-type=\"text/xml\" size=\"1001.33\" name=\"sample.xml\" type=\"StreamType\">
					<StreamType>StreamType</StreamType>
					<StreamSize>1001.33</StreamSize>
					<StreamID>1</StreamID>
					<Binary>false</Binary>
					<Summary>This value is constant</Summary>
				</Stream>
			</File>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<File creation_date=\"08/06/00\" creator=\"Leon\" name=\"File00000000000\" type=\"FileType\" idref=\"1\" id=\"2\">
				<FileName>File00000000000</FileName>
				<description> abides fullest charms aprons batter perspective brags yesterday honor bluest<bold> wills crimeful calm lobby truer miser perseus take</bold> tapers owe ceas rhyme mindful surly suspect fantasticoes spirits legitimation holofernes portraiture trouts suffocating deed strides ithaca<bold> smiles sunshine loud right disdainfully figs searching</bold> curl reins humble nurture hue doom hidden abridgement seein<bold> invisible authentic shapes quae several reaches howled</bold> merry purpos howl burneth scholars untreasur maidenliest dealing</description>
				<SecurityObject name=\"so00000000001\">
					<Denies>
						<Deny>
							<security/>
							<user>system\\Changyuan</user>
						</Deny>
						<Deny>
							<security>
								<right>Read</right>
							</security>
							<user>system\\Toshiko</user>
						</Deny>
					</Denies>
					<Allows>
						<Allow>
							<security>
								<right>Read</right>
								<right>Write</right>
							</security>
							<user>system\\Hyungjeong</user>
						</Allow>
					</Allows>
				</SecurityObject>
				<Stream binary=\"false\" streamid=\"1\" content-type=\"text/xml\" size=\"1001.33\" name=\"sample.xml\" type=\"StreamType\">
					<StreamType>StreamType</StreamType>
					<StreamSize>1001.33</StreamSize>
					<StreamID>1</StreamID>
					<Binary>false</Binary>
					<Summary>This value is constant</Summary>
				</Stream>
			</File>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<File creation_date=\"08/06/00\" creator=\"Leon\" name=\"File00000000000\" type=\"FileType\" idref=\"1\" id=\"2\">
				<FileName>File00000000000</FileName>
				<description> abides fullest charms aprons batter perspective brags yesterday honor bluest<bold> wills crimeful calm lobby truer miser perseus take</bold> tapers owe ceas rhyme mindful surly suspect fantasticoes spirits legitimation holofernes portraiture trouts suffocating deed strides ithaca<bold> smiles sunshine loud right disdainfully figs searching</bold> curl reins humble nurture hue doom hidden abridgement seein<bold> invisible authentic shapes quae several reaches howled</bold> merry purpos howl burneth scholars untreasur maidenliest dealing</description>
				<SecurityObject name=\"so00000000001\">
					<Denies>
						<Deny>
							<security/>
							<user>system\\Changyuan</user>
						</Deny>
						<Deny>
							<security>
								<right>Read</right>
							</security>
							<user>system\\Toshiko</user>
						</Deny>
					</Denies>
					<Allows>
						<Allow>
							<security>
								<right>Read</right>
								<right>Write</right>
							</security>
							<user>system\\Hyungjeong</user>
						</Allow>
					</Allows>
				</SecurityObject>
				<Stream binary=\"false\" streamid=\"1\" content-type=\"text/xml\" size=\"1001.33\" name=\"sample.xml\" type=\"StreamType\">
					<StreamType>StreamType</StreamType>
					<StreamSize>1001.33</StreamSize>
					<StreamID>1</StreamID>
					<Binary>false</Binary>
					<Summary>This value is constant</Summary>
				</Stream>
			</File>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WhereExpr005'(_Config) ->
   Qry = "<empty> { for $folder in /MyComputer/Drive2//Folder where 1 = 2 return <Folder> { $folder/FolderName/text() } </Folder> } </empty>",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            <empty/>
            
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<empty/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'WhereExpr006'(_Config) ->
   Qry = "for $folder in /MyComputer/Drive4//Folder return <Folder>{ $folder/@name }{ for $file in /MyComputer/Drive4//File where $file/@idref = $folder/@id return <File>{ $file/@name }</File> }</Folder>",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <Folder name=\"Folder00000000047\"/><Folder name=\"Folder00000000048\"><File name=\"File00000000077\"/><File name=\"File00000000078\"/><File name=\"File00000000079\"/><File name=\"File00000000080\"/><File name=\"File00000000081\"/></Folder><Folder name=\"Folder00000000049\"><File name=\"File00000000082\"/><File name=\"File00000000083\"/><File name=\"File00000000084\"/><File name=\"File00000000085\"/><File name=\"File00000000086\"/></Folder><Folder name=\"Folder00000000050\"><File name=\"File00000000087\"/><File name=\"File00000000088\"/></Folder><Folder name=\"Folder00000000051\"><File name=\"File00000000089\"/><File name=\"File00000000090\"/><File name=\"File00000000091\"/><File name=\"File00000000092\"/><File name=\"File00000000093\"/><File name=\"File00000000094\"/></Folder><Folder name=\"Folder00000000052\"><File name=\"File00000000095\"/><File name=\"File00000000096\"/></Folder><Folder name=\"Folder00000000053\"><File name=\"File00000000097\"/><File name=\"File00000000098\"/><File name=\"File00000000099\"/></Folder><Folder name=\"Folder00000000054\"><File name=\"File00000000100\"/></Folder>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<Folder name=\"Folder00000000047\"/><Folder name=\"Folder00000000048\"><File name=\"File00000000077\"/><File name=\"File00000000078\"/><File name=\"File00000000079\"/><File name=\"File00000000080\"/><File name=\"File00000000081\"/></Folder><Folder name=\"Folder00000000049\"><File name=\"File00000000082\"/><File name=\"File00000000083\"/><File name=\"File00000000084\"/><File name=\"File00000000085\"/><File name=\"File00000000086\"/></Folder><Folder name=\"Folder00000000050\"><File name=\"File00000000087\"/><File name=\"File00000000088\"/></Folder><Folder name=\"Folder00000000051\"><File name=\"File00000000089\"/><File name=\"File00000000090\"/><File name=\"File00000000091\"/><File name=\"File00000000092\"/><File name=\"File00000000093\"/><File name=\"File00000000094\"/></Folder><Folder name=\"Folder00000000052\"><File name=\"File00000000095\"/><File name=\"File00000000096\"/></Folder><Folder name=\"Folder00000000053\"><File name=\"File00000000097\"/><File name=\"File00000000098\"/><File name=\"File00000000099\"/></Folder><Folder name=\"Folder00000000054\"><File name=\"File00000000100\"/></Folder>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<Folder name=\"Folder00000000047\"/><Folder name=\"Folder00000000048\"><File name=\"File00000000077\"/><File name=\"File00000000078\"/><File name=\"File00000000079\"/><File name=\"File00000000080\"/><File name=\"File00000000081\"/></Folder><Folder name=\"Folder00000000049\"><File name=\"File00000000082\"/><File name=\"File00000000083\"/><File name=\"File00000000084\"/><File name=\"File00000000085\"/><File name=\"File00000000086\"/></Folder><Folder name=\"Folder00000000050\"><File name=\"File00000000087\"/><File name=\"File00000000088\"/></Folder><Folder name=\"Folder00000000051\"><File name=\"File00000000089\"/><File name=\"File00000000090\"/><File name=\"File00000000091\"/><File name=\"File00000000092\"/><File name=\"File00000000093\"/><File name=\"File00000000094\"/></Folder><Folder name=\"Folder00000000052\"><File name=\"File00000000095\"/><File name=\"File00000000096\"/></Folder><Folder name=\"Folder00000000053\"><File name=\"File00000000097\"/><File name=\"File00000000098\"/><File name=\"File00000000099\"/></Folder><Folder name=\"Folder00000000054\"><File name=\"File00000000100\"/></Folder>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WhereExpr007'(_Config) ->
   Qry = "<fragment-result>{ for $folder in /MyComputer/Drive3/Folder ,$file in /MyComputer/Drive3/Folder/File where $folder/@id = $file/@idref return <Folder> { $folder/@name, $folder/@id } <file>{ $file/@idref, $file/FileName/text() }</file> </Folder> }</fragment-result>",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <fragment-result><Folder name=\"Folder00000000017\" id=\"67\"><file idref=\"67\">File00000000047</file></Folder><Folder name=\"Folder00000000032\" id=\"97\"><file idref=\"97\">File00000000062</file></Folder></fragment-result>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<fragment-result><Folder name=\"Folder00000000017\" id=\"67\"><file idref=\"67\">File00000000047</file></Folder><Folder name=\"Folder00000000032\" id=\"97\"><file idref=\"97\">File00000000062</file></Folder></fragment-result>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<fragment-result><Folder name=\"Folder00000000017\" id=\"67\"><file idref=\"67\">File00000000047</file></Folder><Folder name=\"Folder00000000032\" id=\"97\"><file idref=\"97\">File00000000062</file></Folder></fragment-result>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WhereExpr008'(_Config) ->
   Qry = "<empty> { for $file in (//Folder)[1]/File where () return $file/FileName } </empty>",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            <empty/>
            
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<empty/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'WhereExpr009'(_Config) ->
   Qry = "for $file in (//Folder)[1]/File where $file/SecurityObject/Denies/Deny/security/right return $file/FileName",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <FileName>File00000000000</FileName><FileName>File00000000002</FileName><FileName>File00000000004</FileName><FileName>File00000000006</FileName><FileName>File00000000007</FileName><FileName>File00000000008</FileName><FileName>File00000000011</FileName><FileName>File00000000014</FileName><FileName>File00000000016</FileName><FileName>File00000000017</FileName><FileName>File00000000018</FileName><FileName>File00000000020</FileName><FileName>File00000000022</FileName><FileName>File00000000023</FileName><FileName>File00000000024</FileName><FileName>File00000000025</FileName><FileName>File00000000027</FileName><FileName>File00000000028</FileName><FileName>File00000000029</FileName><FileName>File00000000030</FileName>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<FileName>File00000000000</FileName><FileName>File00000000002</FileName><FileName>File00000000004</FileName><FileName>File00000000006</FileName><FileName>File00000000007</FileName><FileName>File00000000008</FileName><FileName>File00000000011</FileName><FileName>File00000000014</FileName><FileName>File00000000016</FileName><FileName>File00000000017</FileName><FileName>File00000000018</FileName><FileName>File00000000020</FileName><FileName>File00000000022</FileName><FileName>File00000000023</FileName><FileName>File00000000024</FileName><FileName>File00000000025</FileName><FileName>File00000000027</FileName><FileName>File00000000028</FileName><FileName>File00000000029</FileName><FileName>File00000000030</FileName>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<FileName>File00000000000</FileName><FileName>File00000000002</FileName><FileName>File00000000004</FileName><FileName>File00000000006</FileName><FileName>File00000000007</FileName><FileName>File00000000008</FileName><FileName>File00000000011</FileName><FileName>File00000000014</FileName><FileName>File00000000016</FileName><FileName>File00000000017</FileName><FileName>File00000000018</FileName><FileName>File00000000020</FileName><FileName>File00000000022</FileName><FileName>File00000000023</FileName><FileName>File00000000024</FileName><FileName>File00000000025</FileName><FileName>File00000000027</FileName><FileName>File00000000028</FileName><FileName>File00000000029</FileName><FileName>File00000000030</FileName>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WhereExpr010'(_Config) ->
   Qry = "for $file in (//Folder)[1]/File where data( $file/SecurityObject//right ) return $file/FileName",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'WhereExpr013'(_Config) ->
   Qry = "for $file in (//Folder)[1]/File where $file/SecurityObject/Denies/Deny/security/right=\"Change\" return $file/FileName",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <FileName>File00000000002</FileName><FileName>File00000000004</FileName><FileName>File00000000008</FileName><FileName>File00000000014</FileName><FileName>File00000000018</FileName><FileName>File00000000020</FileName><FileName>File00000000022</FileName><FileName>File00000000025</FileName><FileName>File00000000030</FileName>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<FileName>File00000000002</FileName><FileName>File00000000004</FileName><FileName>File00000000008</FileName><FileName>File00000000014</FileName><FileName>File00000000018</FileName><FileName>File00000000020</FileName><FileName>File00000000022</FileName><FileName>File00000000025</FileName><FileName>File00000000030</FileName>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<FileName>File00000000002</FileName><FileName>File00000000004</FileName><FileName>File00000000008</FileName><FileName>File00000000014</FileName><FileName>File00000000018</FileName><FileName>File00000000020</FileName><FileName>File00000000022</FileName><FileName>File00000000025</FileName><FileName>File00000000030</FileName>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WhereExpr014'(_Config) ->
   Qry = "for $file in (//Folder)[1]/File where true() return $file/FileName",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <FileName>File00000000000</FileName><FileName>File00000000001</FileName><FileName>File00000000002</FileName><FileName>File00000000003</FileName><FileName>File00000000004</FileName><FileName>File00000000005</FileName><FileName>File00000000006</FileName><FileName>File00000000007</FileName><FileName>File00000000008</FileName><FileName>File00000000009</FileName><FileName>File00000000010</FileName><FileName>File00000000011</FileName><FileName>File00000000012</FileName><FileName>File00000000013</FileName><FileName>File00000000014</FileName><FileName>File00000000015</FileName><FileName>File00000000016</FileName><FileName>File00000000017</FileName><FileName>File00000000018</FileName><FileName>File00000000019</FileName><FileName>File00000000020</FileName><FileName>File00000000021</FileName><FileName>File00000000022</FileName><FileName>File00000000023</FileName><FileName>File00000000024</FileName><FileName>File00000000025</FileName><FileName>File00000000026</FileName><FileName>File00000000027</FileName><FileName>File00000000028</FileName><FileName>File00000000029</FileName><FileName>File00000000030</FileName>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<FileName>File00000000000</FileName><FileName>File00000000001</FileName><FileName>File00000000002</FileName><FileName>File00000000003</FileName><FileName>File00000000004</FileName><FileName>File00000000005</FileName><FileName>File00000000006</FileName><FileName>File00000000007</FileName><FileName>File00000000008</FileName><FileName>File00000000009</FileName><FileName>File00000000010</FileName><FileName>File00000000011</FileName><FileName>File00000000012</FileName><FileName>File00000000013</FileName><FileName>File00000000014</FileName><FileName>File00000000015</FileName><FileName>File00000000016</FileName><FileName>File00000000017</FileName><FileName>File00000000018</FileName><FileName>File00000000019</FileName><FileName>File00000000020</FileName><FileName>File00000000021</FileName><FileName>File00000000022</FileName><FileName>File00000000023</FileName><FileName>File00000000024</FileName><FileName>File00000000025</FileName><FileName>File00000000026</FileName><FileName>File00000000027</FileName><FileName>File00000000028</FileName><FileName>File00000000029</FileName><FileName>File00000000030</FileName>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<FileName>File00000000000</FileName><FileName>File00000000001</FileName><FileName>File00000000002</FileName><FileName>File00000000003</FileName><FileName>File00000000004</FileName><FileName>File00000000005</FileName><FileName>File00000000006</FileName><FileName>File00000000007</FileName><FileName>File00000000008</FileName><FileName>File00000000009</FileName><FileName>File00000000010</FileName><FileName>File00000000011</FileName><FileName>File00000000012</FileName><FileName>File00000000013</FileName><FileName>File00000000014</FileName><FileName>File00000000015</FileName><FileName>File00000000016</FileName><FileName>File00000000017</FileName><FileName>File00000000018</FileName><FileName>File00000000019</FileName><FileName>File00000000020</FileName><FileName>File00000000021</FileName><FileName>File00000000022</FileName><FileName>File00000000023</FileName><FileName>File00000000024</FileName><FileName>File00000000025</FileName><FileName>File00000000026</FileName><FileName>File00000000027</FileName><FileName>File00000000028</FileName><FileName>File00000000029</FileName><FileName>File00000000030</FileName>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WhereExpr015'(_Config) ->
   Qry = "<empty> { for $file in (//Folder)[1]/File where false() return $file/FileName } </empty>",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            <empty/>
            
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P1 -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<empty/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'WhereExpr016'(_Config) ->
   Qry = "for $file at $offset in (//Folder)[1]/File where $offset mod 2 = 1 return $file/FileName",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <FileName>File00000000000</FileName><FileName>File00000000002</FileName><FileName>File00000000004</FileName><FileName>File00000000006</FileName><FileName>File00000000008</FileName><FileName>File00000000010</FileName><FileName>File00000000012</FileName><FileName>File00000000014</FileName><FileName>File00000000016</FileName><FileName>File00000000018</FileName><FileName>File00000000020</FileName><FileName>File00000000022</FileName><FileName>File00000000024</FileName><FileName>File00000000026</FileName><FileName>File00000000028</FileName><FileName>File00000000030</FileName>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<FileName>File00000000000</FileName><FileName>File00000000002</FileName><FileName>File00000000004</FileName><FileName>File00000000006</FileName><FileName>File00000000008</FileName><FileName>File00000000010</FileName><FileName>File00000000012</FileName><FileName>File00000000014</FileName><FileName>File00000000016</FileName><FileName>File00000000018</FileName><FileName>File00000000020</FileName><FileName>File00000000022</FileName><FileName>File00000000024</FileName><FileName>File00000000026</FileName><FileName>File00000000028</FileName><FileName>File00000000030</FileName>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<FileName>File00000000000</FileName><FileName>File00000000002</FileName><FileName>File00000000004</FileName><FileName>File00000000006</FileName><FileName>File00000000008</FileName><FileName>File00000000010</FileName><FileName>File00000000012</FileName><FileName>File00000000014</FileName><FileName>File00000000016</FileName><FileName>File00000000018</FileName><FileName>File00000000020</FileName><FileName>File00000000022</FileName><FileName>File00000000024</FileName><FileName>File00000000026</FileName><FileName>File00000000028</FileName><FileName>File00000000030</FileName>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'WhereExpr017'(_Config) ->
   Qry = "for $file in (//Folder)[1]/File where true(), true() return $file/FileName",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'WhereExpr018'(_Config) ->
   Qry = "for $file in (//Folder)[1]/File where $undefined return $file/FileName",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0008" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0008'}) end.
'WhereExpr019'(_Config) ->
   Qry = "for $file in (//Folder)[1]/File where_ true() return $file/FileName",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'WhereExpr020'(_Config) ->
   {skip,"XQ10"}.
'WhereExpr020a'(_Config) ->
   Qry = "for $file in (//Folder)[1]/File where true() where false() return $file/FileName",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'WhereExpr021'(_Config) ->
   {skip,"XQ10"}.
'WhereExpr022'(_Config) ->
   Qry = "
         for $file in //File 
         let $namelen := string-length($file/FileName)
         where ($namelen = 15 and $file//Allow/user = 'system\\Hyungjeong') 
         return $file/FileName
      ",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         File00000000000
      ",
   case xqerl_test:string_value(Res) of
             "File00000000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'WhereExpr023'(_Config) ->
   Qry = "
         for $file in //File
         count $c
         where ($file//Allow/user = 'system\\Aladin') 
         return $c
      ",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         2
      ",
   case xqerl_test:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'WhereExpr024'(_Config) ->
   Qry = "
         for $file in //File 
         let $prefix := substring($file/FileName, 1, 4)
         where ($prefix = 'File')
         where ($file//Allow/user = 'system\\Hyungjeong')
         return $file/FileName
      ",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         File00000000000
      ",
   case xqerl_test:string_value(Res) of
             "File00000000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'WhereExpr025'(_Config) ->
   Qry = "
         for $file in //File 
         where current-date() gt xs:date('1900-01-01')
         let $prefix := substring($file/FileName, 1, 4)
         where ($prefix = 'File')
         where ($file//Allow/user = 'system\\Hyungjeong')
         return $file/FileName
      ",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         File00000000000
      ",
   case xqerl_test:string_value(Res) of
             "File00000000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'WhereExpr026'(_Config) ->
   Qry = "
         let $doc := (/)
         return (11 to 15)!
            (for $file in $doc//File
            count $c
            where $c = position()
            return $file/FileName)
      ",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         File00000000000 File00000000001 File00000000002 File00000000003 File00000000004
      ",
   case xqerl_test:string_value(Res) of
             "File00000000000 File00000000001 File00000000002 File00000000003 File00000000004" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'WhereExpr027'(_Config) ->
   Qry = "
         let $doc := (/)
         return (11 to 15)!
            (for $file at $c in $doc//File
            where $c = last()
            return string($file/FileName))
      ",
   Env = xqerl_test:handle_environment(environment('fsx')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         File00000000004 File00000000004 File00000000004 File00000000004 File00000000004
      ",
   case xqerl_test:string_value(Res) of
             "File00000000004 File00000000004 File00000000004 File00000000004 File00000000004" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'WhereExpr028'(_Config) ->
   Qry = "
         let $x := 1 to 10
         where $x = 1
         return $x
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 2 3 4 5 6 7 8 9 10
      ",
   case xqerl_test:string_value(Res) of
             "1 2 3 4 5 6 7 8 9 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'WhereExpr029'(_Config) ->
   Qry = "
         let $x := 1 to 10
         where count($x) = 1
         return $x
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'WhereExpr030'(_Config) ->
   Qry = "
         declare variable $n external := 10;
         for $x allowing empty in 1 to $n
         where $x lt 5
         return $x
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 2 3 4
      ",
   case xqerl_test:string_value(Res) of
             "1 2 3 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'WhereExpr031'(_Config) ->
   Qry = "
         declare variable $n external := 0;
         for $x allowing empty in 1 to $n
         where not($x = 5)
         return concat(\"[\", $x, \"]\")
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         []
      ",
   case xqerl_test:string_value(Res) of
             "[]" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'WhereExpr032'(_Config) ->
   Qry = "
         for $x allowing empty in 1 to 5
         where $x lt 0
         return empty($x)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'WhereExpr033'(_Config) ->
   Qry = "
         declare variable $n external := 0;
         for $x in -2 to +2
         where ($n - $x)
         return $x
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -2 -1 1 2
      ",
   case xqerl_test:string_value(Res) of
             "-2 -1 1 2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'whereClause-1'(_Config) ->
   Qry = "let $var := (fn:true()) where $var or fn:true() return $var or fn:true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'whereClause-2'(_Config) ->
   Qry = "let $var := (fn:false()) where fn:not($var or fn:false()) return $var or fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'whereClause-3'(_Config) ->
   Qry = "let $var := (fn:true()) where $var and fn:true() return $var and fn:true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'whereClause-4'(_Config) ->
   Qry = "let $var := (fn:false()) where fn:not($var and fn:false()) return $var and fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'whereClause-5'(_Config) ->
   Qry = "let $var := 100 where typeswitch($var) case $i as xs:string return fn:false() case $i as xs:integer return fn:true() default return fn:false() return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         100
      ",
 Tst = xqerl:run("100"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'whereClause-6'(_Config) ->
   Qry = "let $var := \"String\" where fn:string($var) = \"String\" return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         String
      ",
   case xqerl_test:string_value(Res) of
             "String" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'whereClause-7'(_Config) ->
   Qry = "let $var := \"String\" where fn:string-length($var) = 6 return fn:string-length($var)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         6
      ",
 Tst = xqerl:run("6"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'whereClause-8'(_Config) ->
   Qry = "let $var := 100 where fn:count(($var)) = 1 return fn:count(($var))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'whereClause-9'(_Config) ->
   Qry = "let $var := <anElement>Some content</anElement> where $var is $var return $var is $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'whereClause-10'(_Config) ->
   Qry = "
         let $var := 1 
         where some $x in (1, 2) satisfies fn:string($var) = \"1\" 
         return fn:string($var )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'whereClause-11'(_Config) ->
   Qry = "
         let $var := 1 
         where every $x in (1, 1) satisfies fn:string($var) = \"1\" 
         return fn:string($var )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K-WhereExpr-1'(_Config) ->
   Qry = "(for $fo in (1, 2, 3) where $fo eq 3 return $fo)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         3
      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-WhereExpr-2'(_Config) ->
   Qry = "string(exactly-one((for $fo in (1, 2, 3) where $fo eq 3 return $fo)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         3
      ",
   case xqerl_test:string_value(Res) of
             "3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K-WhereExpr-3'(_Config) ->
   Qry = "count((for $fo in (1, 2, 3) where xs:time(\"08:08:23Z\") return $fo)) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'K-WhereExpr-4'(_Config) ->
   Qry = "for $i in 1 where count(($i, 2, timezone-from-time(current-time()))) return true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-WhereExpr-5'(_Config) ->
   Qry = "empty(for $i in 1 where false() return $i)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-WhereExpr-6'(_Config) ->
   Qry = "(for $i in 1 where true() return $i) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-WhereExpr-7'(_Config) ->
   Qry = "empty(for $i in 1 where (1, current-time())[1] treat as xs:integer eq 0 return $i)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-WhereExpr-8'(_Config) ->
   Qry = "(for $i in 1 where (1, current-time())[1] treat as xs:integer eq 1 return $i) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-WhereExpr-9'(_Config) ->
   Qry = "for $i in (1, 2, current-time())[1] where fn:boolean($i treat as xs:integer) return true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-WhereExpr-10'(_Config) ->
   Qry = "for $i in (1, 2, current-time())[1] where xs:anyURI(\"example.com/\") return true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-WhereExpr-11'(_Config) ->
   Qry = "empty(for $i in (1, 2, current-time())[1] where xs:anyURI(\"\") return true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-WhereExpr-1'(_Config) ->
   {skip,"XQ10"}.
'K2-WhereExpr-1b'(_Config) ->
   Qry = "for $a in 1 where true() where true() return $a",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-WhereExpr-2'(_Config) ->
   Qry = "for $a in 1 where true(), true() return $a",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'cbcl-hash-join-1'(_Config) ->
   Qry = "for $x in (xs:untypedAtomic(\"123\"), xs:untypedAtomic(\"234\")) for $y in (xs:string(\"123\"), xs:float(123), xs:double(123)) where $x = $y return $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            123 123 123
            
         
      ",
 case (xqerl_test:string_value(Res) == "123 123 123") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-hash-join-2'(_Config) ->
   Qry = "for $x in (xs:integer(\"123\"), xs:integer(\"234\")) for $y in (xs:integer(\"123\"), xs:integer(\"456\")) where $x = $y return $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         123
      ",
   case xqerl_test:string_value(Res) of
             "123" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-hash-join-3'(_Config) ->
   Qry = "for $x in (xs:date(\"2010-10-10\"), xs:date(\"1997-01-01+12:00\"), xs:date(\"1997-01-02+12:00\")) for $y in (xs:date(\"2010-10-10Z\"), xs:date(\"2010-10-10+01:00\"), xs:date(\"1997-01-01-12:00\")) where $x = $y return $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         2010-10-10 1997-01-02+12:00
      ",
   case xqerl_test:string_value(Res) of
             "2010-10-10 1997-01-02+12:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-hash-join-4'(_Config) ->
   Qry = "for $x in (xs:untypedAtomic(\"2.0\"), xs:untypedAtomic(\"3\"), xs:double(\"3.0\")) for $y in (xs:untypedAtomic(\"2\"), xs:untypedAtomic(\"3\"), xs:double(\"3\")) where $x = $y return $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            3 3 3 3
            
         
      ",
 case (xqerl_test:string_value(Res) == "3 3 3 3") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-hash-join-005'(_Config) ->
   Qry = "declare function local:durationOrFloat($i as xs:integer) { (xs:float(123), xs:float(234), xs:duration(\"P1D\"))[$i] }; for $x in (xs:untypedAtomic(\"123\"), xs:untypedAtomic(\"234\")) for $y in (for $z in (1,2) return local:durationOrFloat($z)) where $x = $y return $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         123 234
      ",
   case xqerl_test:string_value(Res) of
             "123 234" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-product-001'(_Config) ->
   Qry = "declare function local:odds($arg as xs:integer*) as xs:integer* { $arg[. mod 2 eq 1] }; boolean(zero-or-one(for $x in local:odds((2,4,8)),$y in local:odds((2,4,8)) return ($x,$y)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-set-from-optional-item-001'(_Config) ->
   Qry = "declare function local:odds($arg as xs:integer?) as xs:integer? { $arg[. mod 2 eq 1] }; boolean(for $x in local:odds(2) where $x < 3 return $x + 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-hash-join-006'(_Config) ->
   Qry = "declare function local:sequence($arg as xs:integer) as item()* { if ($arg mod 2 eq 0) then (1, 3, 5, 7, 9) else (\"a\", \"b\", \"c\") }; for $x in local:sequence(2) for $y in local:sequence(3) where $x = $y return ($x, $y)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-hash-join-007'(_Config) ->
   Qry = "declare function local:sequence($arg as xs:integer) as item()* { if ($arg mod 2 eq 0) then (1, 3, 5, 7, 9) else (\"a\", \"b\", \"c\") }; for $x in local:sequence(2) for $y in local:sequence(2) where $x = $y return ($x, $y)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 1 3 3 5 5 7 7 9 9
      ",
   case xqerl_test:string_value(Res) of
             "1 1 3 3 5 5 7 7 9 9" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-hash-join-008'(_Config) ->
   Qry = "declare function local:sequence($arg as xs:integer) as item()* { if ($arg mod 2 eq 0) then (1, 3, 5, 7, 9, \"cheese\") else (xs:untypedAtomic(\"1\"), xs:untypedAtomic(\"2\")) }; for $x in local:sequence(2) for $y in local:sequence(3) where $x = $y return ($x, $y)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 1
      ",
   case xqerl_test:string_value(Res) of
             "1 1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-hash-join-009'(_Config) ->
   Qry = "for $x in (1,2,3,\"cheese\") for $y in (1,2,3,\"cheese\") where $x = $y return ($x, $y)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-hash-join-010'(_Config) ->
   Qry = "for $x in (1,2,3, xs:untypedAtomic(\"1\")) for $y in (1,2,3,\"cheese\") where $x = $y return ($x, $y)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-group-by-key-001'(_Config) ->
   Qry = "declare function local:get-words() { tokenize(\"she sells sea shells by the sea shore\", \"\\s+\") }; let $words := local:get-words() let $distinct-words := distinct-values($words) for $word in $distinct-words return <word word=\"{$word}\" count=\"{count($words[. = $word])}\" />",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <word word=\"she\" count=\"1\"/><word word=\"sells\" count=\"1\"/><word word=\"sea\" count=\"2\"/><word word=\"shells\" count=\"1\"/><word word=\"by\" count=\"1\"/><word word=\"the\" count=\"1\"/><word word=\"shore\" count=\"1\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<word word=\"she\" count=\"1\"/><word word=\"sells\" count=\"1\"/><word word=\"sea\" count=\"2\"/><word word=\"shells\" count=\"1\"/><word word=\"by\" count=\"1\"/><word word=\"the\" count=\"1\"/><word word=\"shore\" count=\"1\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<word word=\"she\" count=\"1\"/><word word=\"sells\" count=\"1\"/><word word=\"sea\" count=\"2\"/><word word=\"shells\" count=\"1\"/><word word=\"by\" count=\"1\"/><word word=\"the\" count=\"1\"/><word word=\"shore\" count=\"1\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'cbcl-group-by-key-002'(_Config) ->
   Qry = "let $items := for $x in 1 to 100 return $x mod 10, $distinct-items := distinct-values($items) for $dist in $distinct-items, $item in $items where $item = $dist return $item",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2 3 3 3 3 3 3 3 3 3 3 4 4 4 4 4 4 4 4 4 4 5 5 5 5 5 5 5 5 5 5 6 6 6 6 6 6 6 6 6 6 7 7 7 7 7 7 7 7 7 7 8 8 8 8 8 8 8 8 8 8 9 9 9 9 9 9 9 9 9 9 0 0 0 0 0 0 0 0 0 0
      ",
   case xqerl_test:string_value(Res) of
             "1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2 3 3 3 3 3 3 3 3 3 3 4 4 4 4 4 4 4 4 4 4 5 5 5 5 5 5 5 5 5 5 6 6 6 6 6 6 6 6 6 6 7 7 7 7 7 7 7 7 7 7 8 8 8 8 8 8 8 8 8 8 9 9 9 9 9 9 9 9 9 9 0 0 0 0 0 0 0 0 0 0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-group-by-key-003'(_Config) ->
   Qry = "let $items := for $x in 1 to 100 return $x mod 10, $distinct-items := distinct-values($items) for $dist in $distinct-items return min( if ($dist = 0) then 0 else for $item in $items where $item = $dist return 1 div $item )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 0.5 0.333333333333333333 0.25 0.2 0.166666666666666667 0.142857142857142857 0.125 0.111111111111111111 0
      ",
   case xqerl_test:string_value(Res) of
             "1 0.5 0.333333333333333333 0.25 0.2 0.166666666666666667 0.142857142857142857 0.125 0.111111111111111111 0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-group-by-key-004'(_Config) ->
   Qry = "let $items := for $x in 1 to 100 return $x mod 10, $distinct-items := distinct-values($items) for $dist in $distinct-items return min( for $item in $items where $item = $dist return if ($dist = 0) then 0 else 1 div $item )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 0.5 0.333333333333333333 0.25 0.2 0.166666666666666667 0.142857142857142857 0.125 0.111111111111111111 0
      ",
   case xqerl_test:string_value(Res) of
             "1 0.5 0.333333333333333333 0.25 0.2 0.166666666666666667 0.142857142857142857 0.125 0.111111111111111111 0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-left-outer-join-001'(_Config) ->
   Qry = "let $items := for $x in 1 to 100 return $x mod 10, $distinct-items := for $y in 1 to (count($items) idiv 10) return $y mod 10 for $dist in $distinct-items return if ($dist = 0) then 0 else min( for $item in $items where $item = $dist return 1 div $item )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 0.5 0.333333333333333333 0.25 0.2 0.166666666666666667 0.142857142857142857 0.125 0.111111111111111111 0
      ",
   case xqerl_test:string_value(Res) of
             "1 0.5 0.333333333333333333 0.25 0.2 0.166666666666666667 0.142857142857142857 0.125 0.111111111111111111 0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-hash-join-011'(_Config) ->
   Qry = "for $x in <t><r><d>1</d><d>1</d><d>1</d></r><r><d>1</d><d>2</d><d>3</d></r><r><d>2</d><d>3</d><d>4</d></r></t>/r, $y in <t><r><d>1</d><d>1</d><d>1</d></r><r><d>2</d><d>4</d><d>6</d></r><r><d>3</d><d>2</d><d>1</d></r></t>/r where $x/d/string(.) = $y/d/string(.) return concat($x, '=', $y)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         111=111 111=321 123=111 123=246 123=321 234=246 234=321
      ",
   case xqerl_test:string_value(Res) of
             "111=111 111=321 123=111 123=246 123=321 234=246 234=321" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-map-concat-001'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then true() else () }; declare function local:g($x) { if ($x) then \"true\" else \"false\" }; let $x := local:g(true()) for $y in local:f($x) return ($y, $x)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         true true
      ",
   case xqerl_test:string_value(Res) of
             "true true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-map-concat-002'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then true() else () }; empty(for $x in local:f(false()), $y in 1 to 10 return ($x, $y))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-map-concat-003'(_Config) ->
   Qry = "declare function local:f($x) { if ($x) then true() else () }; for $x in local:f(true()), $y in 1 to 10 return ($x, $y)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         true 1 true 2 true 3 true 4 true 5 true 6 true 7 true 8 true 9 true 10
      ",
   case xqerl_test:string_value(Res) of
             "true 1 true 2 true 3 true 4 true 5 true 6 true 7 true 8 true 9 true 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-left-outer-join-002'(_Config) ->
   Qry = "<e> { for $x in 1 to 10 return <a>{for $y in 1 to 10 where $x > 7 and $y = $x return $y}</a> } </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <e><a/><a/><a/><a/><a/><a/><a/><a>8</a><a>9</a><a>10</a></e>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e><a/><a/><a/><a/><a/><a/><a/><a>8</a><a>9</a><a>10</a></e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e><a/><a/><a/><a/><a/><a/><a/><a>8</a><a>9</a><a>10</a></e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'cbcl-left-outer-join-003'(_Config) ->
   Qry = "<e> { for $x in 1 to 10 where $x > 7 return <a>{for $y in 1 to 10 where $y = $x return $y}</a> } </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <e><a>8</a><a>9</a><a>10</a></e>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e><a>8</a><a>9</a><a>10</a></e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e><a>8</a><a>9</a><a>10</a></e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'cbcl-left-outer-join-004'(_Config) ->
   Qry = "<tbody> { let $rows := <tables> <table> <row> <entry>Acetazolamide</entry> <entry>Acetazolamide</entry> </row> <row> <entry>Acetazolamide sodium</entry> <entry>Acetazolamide sodium</entry> </row> </table> <table> <row> <entry>Acetylcholine chloride</entry> <entry>Acetylcholine chloride</entry> </row> </table> <table> <row> <entry>Acetylcysteine</entry> <entry>Acetylcysteine</entry> </row> <row> <entry>Acetylcysteine sodium</entry> <entry>Acetylcysteine sodium</entry> </row> </table> </tables>/table/row return for $g in distinct-values($rows/entry[2][string(.)]) order by $g return let $matches := for $row in $rows where $g = string($row/entry[2][string(.)]) return $row/entry[1] return <entry> { $matches/( <link> { node() } </link>, text { if (position() lt last()) then '; ' else () } ) } </entry> } </tbody>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <tbody><entry><link>Acetazolamide</link></entry><entry><link>Acetazolamide sodium</link></entry><entry><link>Acetylcholine chloride</link></entry><entry><link>Acetylcysteine</link></entry><entry><link>Acetylcysteine sodium</link></entry></tbody>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<tbody><entry><link>Acetazolamide</link></entry><entry><link>Acetazolamide sodium</link></entry><entry><link>Acetylcholine chloride</link></entry><entry><link>Acetylcysteine</link></entry><entry><link>Acetylcysteine sodium</link></entry></tbody>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<tbody><entry><link>Acetazolamide</link></entry><entry><link>Acetazolamide sodium</link></entry><entry><link>Acetylcholine chloride</link></entry><entry><link>Acetylcysteine</link></entry><entry><link>Acetylcysteine sodium</link></entry></tbody>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'cbcl-hash-join-012'(_Config) ->
   Qry = "declare variable $strings := ('1','2'); declare variable $untypeds := (<untyped>1</untyped>,<untyped>2</untyped>); for $string in $strings for $untyped in $untypeds where $untyped = $string return $string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 2
      ",
   case xqerl_test:string_value(Res) of
             "1 2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
