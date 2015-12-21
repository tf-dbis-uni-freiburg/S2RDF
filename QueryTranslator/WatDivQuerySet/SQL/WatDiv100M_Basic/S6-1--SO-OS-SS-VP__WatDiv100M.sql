SELECT tab0.v1 AS v1 , tab2.v0 AS v0 , tab1.v2 AS v2 
 FROM    (SELECT sub AS v0 
	 FROM wsdbm__hasGenre$$3$$
	 
	 WHERE obj = 'wsdbm:SubGenre130' AND SSmo__conductor=true AND SSrdf__type=true
	) tab2
 JOIN    (SELECT obj AS v1 , sub AS v0 
	 FROM mo__conductor$$1$$
	 
	 WHERE SSrdf__type=true AND SSwsdbm__hasGenre=true
	) tab0
 ON(tab2.v0=tab0.v0)
 JOIN    (SELECT sub AS v0 , obj AS v2 
	 FROM rdf__type$$2$$ 
	 WHERE SSmo__conductor=true AND SSwsdbm__hasGenre=true
	) tab1
 ON(tab0.v0=tab1.v0)


++++++Tables Statistic
rdf__type$$2$$	1	VP	rdf__type
	VP	<rdf__type>	1480374
	SS	<rdf__type><mo__conductor>	4192	0.0
	SS	<rdf__type><wsdbm__hasGenre>	250000	0.17
------
mo__conductor$$1$$	0	VP	mo__conductor
	VP	<mo__conductor>	4192
	SS	<mo__conductor><rdf__type>	4192	1.0
	SS	<mo__conductor><wsdbm__hasGenre>	4192	1.0
------
wsdbm__hasGenre$$3$$	1	VP	wsdbm__hasGenre
	VP	<wsdbm__hasGenre>	593924
	SS	<wsdbm__hasGenre><mo__conductor>	10016	0.02
	SS	<wsdbm__hasGenre><rdf__type>	593924	1.0
------
