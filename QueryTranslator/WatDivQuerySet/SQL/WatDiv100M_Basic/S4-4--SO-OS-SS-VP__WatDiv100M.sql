SELECT tab3.v0 AS v0 , tab2.v3 AS v3 , tab1.v2 AS v2 
 FROM    (SELECT sub AS v0 
	 FROM sorg__nationality$$4$$
	 
	 WHERE obj = 'wsdbm:Country1' AND SSfoaf__age=true AND SSfoaf__familyName=true AND SOmo__artist=true
	) tab3
 JOIN    (SELECT sub AS v0 
	 FROM foaf__age$$1$$ 
	 WHERE obj = 'wsdbm:AgeGroup1' AND SSfoaf__familyName=true AND SOmo__artist=true AND SSsorg__nationality=true
	) tab0
 ON(tab3.v0=tab0.v0)
 JOIN    (SELECT obj AS v0 , sub AS v3 
	 FROM mo__artist$$3$$ 
	 WHERE OSfoaf__age=true AND OSfoaf__familyName=true AND OSsorg__nationality=true
	) tab2
 ON(tab0.v0=tab2.v0)
 JOIN    (SELECT sub AS v0 , obj AS v2 
	 FROM foaf__familyName$$2$$
	 
	 WHERE SSfoaf__age=true AND SOmo__artist=true AND SSsorg__nationality=true
	) tab1
 ON(tab2.v0=tab1.v0)


++++++Tables Statistic
foaf__familyName$$2$$	2	VP	foaf__familyName
	VP	<foaf__familyName>	700284
	SS	<foaf__familyName><foaf__age>	350487	0.5
	SO	<foaf__familyName><mo__artist>	4127	0.01
	SS	<foaf__familyName><sorg__nationality>	140590	0.2
------
mo__artist$$3$$	3	VP	mo__artist
	VP	<mo__artist>	13306
	OS	<mo__artist><foaf__age>	5915	0.44
	OS	<mo__artist><foaf__familyName>	9537	0.72
	OS	<mo__artist><sorg__nationality>	2167	0.16
------
sorg__nationality$$4$$	3	VP	sorg__nationality
	VP	<sorg__nationality>	200780
	SS	<sorg__nationality><foaf__age>	100375	0.5
	SS	<sorg__nationality><foaf__familyName>	140590	0.7
	SO	<sorg__nationality><mo__artist>	1167	0.01
------
foaf__age$$1$$	2	VP	foaf__age
	VP	<foaf__age>	500284
	SS	<foaf__age><foaf__familyName>	350487	0.7
	SO	<foaf__age><mo__artist>	3005	0.01
	SS	<foaf__age><sorg__nationality>	100375	0.2
------
