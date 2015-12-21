SELECT tab0.v1 AS v1 , tab2.v0 AS v0 , tab5.v5 AS v5 , tab4.v6 AS v6 , tab3.v4 AS v4 , tab1.v2 AS v2 
 FROM    (SELECT sub AS v0 
	 FROM wsdbm__hasGenre$$3$$
	 
	 WHERE obj = 'wsdbm:SubGenre83' AND SSsorg__contentRating=true AND SSsorg__contentSize=true AND SOwsdbm__purchaseFor=true
	) tab2
 JOIN    (SELECT obj AS v1 , sub AS v0 
	 FROM sorg__contentRating$$1$$
	 
	 WHERE SSsorg__contentSize=true AND SSwsdbm__hasGenre=true AND SOwsdbm__purchaseFor=true
	) tab0
 ON(tab2.v0=tab0.v0)
 JOIN    (SELECT sub AS v0 , obj AS v2 
	 FROM sorg__contentSize$$2$$
	 
	 WHERE SSsorg__contentRating=true AND SSwsdbm__hasGenre=true AND SOwsdbm__purchaseFor=true
	) tab1
 ON(tab0.v0=tab1.v0)
 JOIN    (SELECT obj AS v0 , sub AS v5 
	 FROM wsdbm__purchaseFor$$6$$
	 
	 WHERE OSsorg__contentRating=true AND OSsorg__contentSize=true AND OSwsdbm__hasGenre=true AND SOwsdbm__makesPurchase=true AND SSwsdbm__purchaseDate=true
	) tab5
 ON(tab1.v0=tab5.v0)
 JOIN    (SELECT obj AS v5 , sub AS v4 
	 FROM wsdbm__makesPurchase$$4$$
	 
	 WHERE OSwsdbm__purchaseDate=true AND OSwsdbm__purchaseFor=true
	) tab3
 ON(tab5.v5=tab3.v5)
 JOIN    (SELECT sub AS v5 , obj AS v6 
	 FROM wsdbm__purchaseDate$$5$$
	 
	 WHERE SOwsdbm__makesPurchase=true AND SSwsdbm__purchaseFor=true
	) tab4
 ON(tab3.v5=tab4.v5)


++++++Tables Statistic
wsdbm__purchaseDate$$5$$	0	VP	wsdbm__purchaseDate
	VP	<wsdbm__purchaseDate>	4519
	SO	<wsdbm__purchaseDate><wsdbm__makesPurchase>	4519	1.0
	SS	<wsdbm__purchaseDate><wsdbm__purchaseFor>	4519	1.0
------
wsdbm__purchaseFor$$6$$	2	VP	wsdbm__purchaseFor
	VP	<wsdbm__purchaseFor>	15000
	OS	<wsdbm__purchaseFor><sorg__contentRating>	4187	0.28
	OS	<wsdbm__purchaseFor><sorg__contentSize>	1163	0.08
	OS	<wsdbm__purchaseFor><wsdbm__hasGenre>	15000	1.0
	SO	<wsdbm__purchaseFor><wsdbm__makesPurchase>	15000	1.0
	SS	<wsdbm__purchaseFor><wsdbm__purchaseDate>	4519	0.3
------
wsdbm__hasGenre$$3$$	2	VP	wsdbm__hasGenre
	VP	<wsdbm__hasGenre>	5961
	SS	<wsdbm__hasGenre><sorg__contentRating>	1801	0.3
	SS	<wsdbm__hasGenre><sorg__contentSize>	596	0.1
	SO	<wsdbm__hasGenre><wsdbm__purchaseFor>	4600	0.77
------
sorg__contentSize$$2$$	1	VP	sorg__contentSize
	VP	<sorg__contentSize>	245
	SS	<sorg__contentSize><sorg__contentRating>	81	0.33
	SS	<sorg__contentSize><wsdbm__hasGenre>	245	1.0
	SO	<sorg__contentSize><wsdbm__purchaseFor>	194	0.79
------
sorg__contentRating$$1$$	1	VP	sorg__contentRating
	VP	<sorg__contentRating>	749
	SS	<sorg__contentRating><sorg__contentSize>	81	0.11
	SS	<sorg__contentRating><wsdbm__hasGenre>	749	1.0
	SO	<sorg__contentRating><wsdbm__purchaseFor>	592	0.79
------
wsdbm__makesPurchase$$4$$	1	VP	wsdbm__makesPurchase
	VP	<wsdbm__makesPurchase>	15000
	OS	<wsdbm__makesPurchase><wsdbm__purchaseDate>	4519	0.3
	OS	<wsdbm__makesPurchase><wsdbm__purchaseFor>	15000	1.0
------
