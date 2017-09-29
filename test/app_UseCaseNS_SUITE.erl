-module('app_UseCaseNS_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['ns-queries-results-q1'/1]).
-export(['ns-queries-results-q2'/1]).
-export(['ns-queries-results-q3'/1]).
-export(['ns-queries-results-q4'/1]).
-export(['ns-queries-results-q5'/1]).
-export(['ns-queries-results-q6'/1]).
-export(['ns-queries-results-q7'/1]).
-export(['ns-queries-results-q8'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'ns-queries-results-q1',
   'ns-queries-results-q2',
   'ns-queries-results-q3',
   'ns-queries-results-q4',
   'ns-queries-results-q5',
   'ns-queries-results-q6',
   'ns-queries-results-q7',
   'ns-queries-results-q8'].
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
environment('auction-xq') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'ns-queries-results-q1'(_Config) ->
   Qry = "
        <Q1> { for $n in distinct-values( for $i in (//* | //@*) return namespace-uri($i) ) return <ns>{$n}</ns> } </Q1>",
   Env = xqerl_test:handle_environment(environment('auction-xq')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <Q1><ns>http://www.example.com/AuctionWatch</ns><ns>http://www.example.com/auctioneers#anyzone</ns><ns>http://www.w3.org/1999/xlink</ns><ns>http://www.w3.org/2001/XMLSchema</ns><ns>http://www.example.com/auctioneers#eachbay</ns><ns>http://www.example.org/music/records</ns><ns>http://www.example.com/auctioneers#yabadoo</ns><ns>http://www.w3.org/XML/1998/namespace</ns></Q1>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<Q1><ns>http://www.example.com/AuctionWatch</ns><ns>http://www.example.com/auctioneers#anyzone</ns><ns>http://www.w3.org/1999/xlink</ns><ns>http://www.w3.org/2001/XMLSchema</ns><ns>http://www.example.com/auctioneers#eachbay</ns><ns>http://www.example.org/music/records</ns><ns>http://www.example.com/auctioneers#yabadoo</ns><ns>http://www.w3.org/XML/1998/namespace</ns></Q1>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<Q1><ns>http://www.example.com/AuctionWatch</ns><ns>http://www.example.com/auctioneers#anyzone</ns><ns>http://www.w3.org/1999/xlink</ns><ns>http://www.w3.org/2001/XMLSchema</ns><ns>http://www.example.com/auctioneers#eachbay</ns><ns>http://www.example.org/music/records</ns><ns>http://www.example.com/auctioneers#yabadoo</ns><ns>http://www.w3.org/XML/1998/namespace</ns></Q1>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'ns-queries-results-q2'(_Config) ->
   Qry = "
        declare namespace music = \"http://www.example.org/music/records\"; 
        <Q2> { //music:title } </Q2>
      ",
   Env = xqerl_test:handle_environment(environment('auction-xq')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <Q2><title xmlns=\"http://www.example.org/music/records\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\">In a Silent Way</title><title xmlns=\"http://www.example.org/music/records\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\">Think of One ...</title></Q2>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<Q2><title xmlns=\"http://www.example.org/music/records\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\">In a Silent Way</title><title xmlns=\"http://www.example.org/music/records\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\">Think of One ...</title></Q2>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<Q2><title xmlns=\"http://www.example.org/music/records\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\">In a Silent Way</title><title xmlns=\"http://www.example.org/music/records\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\">Think of One ...</title></Q2>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'ns-queries-results-q3'(_Config) ->
   Qry = "
        declare namespace dt = \"http://www.w3.org/2001/XMLSchema\"; 
        <Q3> { //*[@dt:*] } </Q3>",
   Env = xqerl_test:handle_environment(environment('auction-xq')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <Q3><ma:Open xmlns:dt=\"http://www.w3.org/2001/XMLSchema\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" dt:type=\"timeInstant\">2000-03-21:07:41:34-05:00</ma:Open><ma:Close xmlns:dt=\"http://www.w3.org/2001/XMLSchema\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" dt:type=\"timeInstant\">2000-03-23:07:41:34-05:00</ma:Close><ma:Open xmlns:dt=\"http://www.w3.org/2001/XMLSchema\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" dt:type=\"timeInstant\">2000-03-19:17:03:00-04:00</ma:Open><ma:Close xmlns:dt=\"http://www.w3.org/2001/XMLSchema\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" dt:type=\"timeInstant\">2000-03-29:17:03:00-04:00</ma:Close></Q3>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<Q3><ma:Open xmlns:dt=\"http://www.w3.org/2001/XMLSchema\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" dt:type=\"timeInstant\">2000-03-21:07:41:34-05:00</ma:Open><ma:Close xmlns:dt=\"http://www.w3.org/2001/XMLSchema\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" dt:type=\"timeInstant\">2000-03-23:07:41:34-05:00</ma:Close><ma:Open xmlns:dt=\"http://www.w3.org/2001/XMLSchema\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" dt:type=\"timeInstant\">2000-03-19:17:03:00-04:00</ma:Open><ma:Close xmlns:dt=\"http://www.w3.org/2001/XMLSchema\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" dt:type=\"timeInstant\">2000-03-29:17:03:00-04:00</ma:Close></Q3>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<Q3><ma:Open xmlns:dt=\"http://www.w3.org/2001/XMLSchema\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" dt:type=\"timeInstant\">2000-03-21:07:41:34-05:00</ma:Open><ma:Close xmlns:dt=\"http://www.w3.org/2001/XMLSchema\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" dt:type=\"timeInstant\">2000-03-23:07:41:34-05:00</ma:Close><ma:Open xmlns:dt=\"http://www.w3.org/2001/XMLSchema\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" dt:type=\"timeInstant\">2000-03-19:17:03:00-04:00</ma:Open><ma:Close xmlns:dt=\"http://www.w3.org/2001/XMLSchema\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" dt:type=\"timeInstant\">2000-03-29:17:03:00-04:00</ma:Close></Q3>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'ns-queries-results-q4'(_Config) ->
   Qry = "
        declare namespace xlink = \"http://www.w3.org/1999/xlink\"; 
        <Q4 xmlns:xlink=\"http://www.w3.org/1999/xlink\"> { for $hr in //@xlink:href return <ns>{ $hr }</ns> } </Q4>
      ",
   Env = xqerl_test:handle_environment(environment('auction-xq')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <Q4 xmlns:xlink=\"http://www.w3.org/1999/xlink\"><ns xlink:href=\"http://www.example.com/item/0321K372910\"/><ns xlink:href=\"http://auction.eachbay.com/members?get=RecordsRUs\"/><ns xlink:href=\"http://auction.anyzone.com/members/VintageRecordFreak\"/><ns xlink:href=\"http://auctions.yabadoo.com/auction/13143816\"/><ns xlink:href=\"http://auction.eachbay.com/showRating/user=VintageRecordFreak\"/><ns xlink:href=\"http://auction.eachbay.com/showRating/user=StarsOn45\"/></Q4>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<Q4 xmlns:xlink=\"http://www.w3.org/1999/xlink\"><ns xlink:href=\"http://www.example.com/item/0321K372910\"/><ns xlink:href=\"http://auction.eachbay.com/members?get=RecordsRUs\"/><ns xlink:href=\"http://auction.anyzone.com/members/VintageRecordFreak\"/><ns xlink:href=\"http://auctions.yabadoo.com/auction/13143816\"/><ns xlink:href=\"http://auction.eachbay.com/showRating/user=VintageRecordFreak\"/><ns xlink:href=\"http://auction.eachbay.com/showRating/user=StarsOn45\"/></Q4>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<Q4 xmlns:xlink=\"http://www.w3.org/1999/xlink\"><ns xlink:href=\"http://www.example.com/item/0321K372910\"/><ns xlink:href=\"http://auction.eachbay.com/members?get=RecordsRUs\"/><ns xlink:href=\"http://auction.anyzone.com/members/VintageRecordFreak\"/><ns xlink:href=\"http://auctions.yabadoo.com/auction/13143816\"/><ns xlink:href=\"http://auction.eachbay.com/showRating/user=VintageRecordFreak\"/><ns xlink:href=\"http://auction.eachbay.com/showRating/user=StarsOn45\"/></Q4>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'ns-queries-results-q5'(_Config) ->
   Qry = "
        declare namespace music = \"http://www.example.org/music/records\"; 
        <Q5 xmlns:music=\"http://www.example.org/music/records\"> { //music:record[music:remark/@xml:lang = \"de\"] } </Q5>
      ",
   Env = xqerl_test:handle_environment(environment('auction-xq')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <Q5 xmlns:music=\"http://www.example.org/music/records\"><record xmlns=\"http://www.example.org/music/records\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\">
            <artist>Wynton Marsalis</artist>
            <title>Think of One ...</title>
            <recorded>1983</recorded>
            <label>Columbia Records</label>
            <remark xml:lang=\"en\"> Columbia Records 12\" 33-1/3 rpm LP,
                #FC-38641, Stereo. The record is still clean and shiny
                and looks unplayed (looks like NM condition).  The
                cover has very light surface and edge wear.
            </remark>
            <remark xml:lang=\"de\"> Columbia Records 12\" 33-1/3 rpm LP,
                #FC-38641, Stereo. Die Platte ist noch immer sauber
                und gl&#228;nzend und sieht ungespielt aus
                (NM Zustand). Das Cover hat leichte Abnutzungen an
                Oberfl&#228;che und Ecken.
            </remark>
        </record></Q5>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<Q5 xmlns:music=\"http://www.example.org/music/records\"><record xmlns=\"http://www.example.org/music/records\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\">
            <artist>Wynton Marsalis</artist>
            <title>Think of One ...</title>
            <recorded>1983</recorded>
            <label>Columbia Records</label>
            <remark xml:lang=\"en\"> Columbia Records 12\" 33-1/3 rpm LP,
                #FC-38641, Stereo. The record is still clean and shiny
                and looks unplayed (looks like NM condition).  The
                cover has very light surface and edge wear.
            </remark>
            <remark xml:lang=\"de\"> Columbia Records 12\" 33-1/3 rpm LP,
                #FC-38641, Stereo. Die Platte ist noch immer sauber
                und gl&#228;nzend und sieht ungespielt aus
                (NM Zustand). Das Cover hat leichte Abnutzungen an
                Oberfl&#228;che und Ecken.
            </remark>
        </record></Q5>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<Q5 xmlns:music=\"http://www.example.org/music/records\"><record xmlns=\"http://www.example.org/music/records\" xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\">
            <artist>Wynton Marsalis</artist>
            <title>Think of One ...</title>
            <recorded>1983</recorded>
            <label>Columbia Records</label>
            <remark xml:lang=\"en\"> Columbia Records 12\" 33-1/3 rpm LP,
                #FC-38641, Stereo. The record is still clean and shiny
                and looks unplayed (looks like NM condition).  The
                cover has very light surface and edge wear.
            </remark>
            <remark xml:lang=\"de\"> Columbia Records 12\" 33-1/3 rpm LP,
                #FC-38641, Stereo. Die Platte ist noch immer sauber
                und gl&#228;nzend und sieht ungespielt aus
                (NM Zustand). Das Cover hat leichte Abnutzungen an
                Oberfl&#228;che und Ecken.
            </remark>
        </record></Q5>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'ns-queries-results-q6'(_Config) ->
   Qry = "
        declare namespace ma = \"http://www.example.com/AuctionWatch\"; 
        declare namespace anyzone = \"http://www.example.com/auctioneers#anyzone\"; 
        <Q6 xmlns:ma=\"http://www.example.com/AuctionWatch\"> { //ma:Auction[@anyzone:ID]/ma:Schedule/ma:Close } </Q6>
      ",
   Env = xqerl_test:handle_environment(environment('auction-xq')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <Q6 xmlns:ma=\"http://www.example.com/AuctionWatch\"><ma:Close xmlns:dt=\"http://www.w3.org/2001/XMLSchema\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" dt:type=\"timeInstant\">2000-03-23:07:41:34-05:00</ma:Close></Q6>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<Q6 xmlns:ma=\"http://www.example.com/AuctionWatch\"><ma:Close xmlns:dt=\"http://www.w3.org/2001/XMLSchema\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" dt:type=\"timeInstant\">2000-03-23:07:41:34-05:00</ma:Close></Q6>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<Q6 xmlns:ma=\"http://www.example.com/AuctionWatch\"><ma:Close xmlns:dt=\"http://www.w3.org/2001/XMLSchema\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" dt:type=\"timeInstant\">2000-03-23:07:41:34-05:00</ma:Close></Q6>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'ns-queries-results-q7'(_Config) ->
   Qry = "
        declare namespace ma = \"http://www.example.com/AuctionWatch\"; 
        <Q7 xmlns:xlink=\"http://www.w3.org/1999/xlink\"> { 
            for $a in //ma:Auction 
            let $seller_id := $a/ma:Trading_Partners/ma:Seller/*:ID, 
                $buyer_id := $a/ma:Trading_Partners/ma:High_Bidder/*:ID 
            where namespace-uri(exactly-one($seller_id)) = namespace-uri($buyer_id) 
            return $a/ma:AuctionHomepage } </Q7>
      ",
   Env = xqerl_test:handle_environment(environment('auction-xq')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <Q7 xmlns:xlink=\"http://www.w3.org/1999/xlink\"><ma:AuctionHomepage xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" xlink:type=\"simple\" xlink:href=\"http://auctions.yabadoo.com/auction/13143816\"/></Q7>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<Q7 xmlns:xlink=\"http://www.w3.org/1999/xlink\"><ma:AuctionHomepage xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" xlink:type=\"simple\" xlink:href=\"http://auctions.yabadoo.com/auction/13143816\"/></Q7>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<Q7 xmlns:xlink=\"http://www.w3.org/1999/xlink\"><ma:AuctionHomepage xmlns:ma=\"http://www.example.com/AuctionWatch\" xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\" xlink:type=\"simple\" xlink:href=\"http://auctions.yabadoo.com/auction/13143816\"/></Q7>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'ns-queries-results-q8'(_Config) ->
   Qry = "
        declare namespace ma = \"http://www.example.com/AuctionWatch\"; 
        <Q8 xmlns:ma=\"http://www.example.com/AuctionWatch\" 
            xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" 
            xmlns:xlink=\"http://www.w3.org/1999/xlink\"> { 
                for $s in //ma:Trading_Partners/(ma:Seller | ma:High_Bidder) 
                where $s/*:NegativeComments = 0 
                return $s } </Q8>
      ",
   Env = xqerl_test:handle_environment(environment('auction-xq')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <Q8 xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:ma=\"http://www.example.com/AuctionWatch\"><ma:High_Bidder xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\">
            <eachbay:ID>VintageRecordFreak</eachbay:ID>
            <eachbay:PositiveComments>232</eachbay:PositiveComments>
            <eachbay:NeutralComments>0</eachbay:NeutralComments>
            <eachbay:NegativeComments>0</eachbay:NegativeComments>
            <ma:MemberInfoPage xlink:type=\"simple\" xlink:href=\"http://auction.eachbay.com/showRating/user=VintageRecordFreak\" xlink:role=\"ma:MemberInfoPage\"/>            
        </ma:High_Bidder></Q8>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<Q8 xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:ma=\"http://www.example.com/AuctionWatch\"><ma:High_Bidder xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\">
            <eachbay:ID>VintageRecordFreak</eachbay:ID>
            <eachbay:PositiveComments>232</eachbay:PositiveComments>
            <eachbay:NeutralComments>0</eachbay:NeutralComments>
            <eachbay:NegativeComments>0</eachbay:NegativeComments>
            <ma:MemberInfoPage xlink:type=\"simple\" xlink:href=\"http://auction.eachbay.com/showRating/user=VintageRecordFreak\" xlink:role=\"ma:MemberInfoPage\"/>            
        </ma:High_Bidder></Q8>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<Q8 xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:eachbay=\"http://www.example.com/auctioneers#eachbay\" xmlns:ma=\"http://www.example.com/AuctionWatch\"><ma:High_Bidder xmlns:anyzone=\"http://www.example.com/auctioneers#anyzone\" xmlns:yabadoo=\"http://www.example.com/auctioneers#yabadoo\">
            <eachbay:ID>VintageRecordFreak</eachbay:ID>
            <eachbay:PositiveComments>232</eachbay:PositiveComments>
            <eachbay:NeutralComments>0</eachbay:NeutralComments>
            <eachbay:NegativeComments>0</eachbay:NegativeComments>
            <ma:MemberInfoPage xlink:type=\"simple\" xlink:href=\"http://auction.eachbay.com/showRating/user=VintageRecordFreak\" xlink:role=\"ma:MemberInfoPage\"/>            
        </ma:High_Bidder></Q8>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
