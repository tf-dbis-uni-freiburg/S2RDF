SELECT tab0.v1 AS v1 , tab1.v0 AS v0 , tab1.v2 AS v2 
 FROM    (SELECT sub AS v0 , obj AS v2 
	 FROM sorg__email$$2$$
	) tab1
 JOIN    (SELECT obj AS v1 , sub AS v0 
	 FROM wsdbm__friendOf$$1$$
	
	) tab0
 ON(tab1.v0=tab0.v0)


++++++Tables Statistic
wsdbm__friendOf$$1$$	1	SS	wsdbm__friendOf/sorg__email
	VP	<wsdbm__friendOf>	448135
	SS	<wsdbm__friendOf><sorg__email>	405887	0.91
------
sorg__email$$2$$	1	SS	sorg__email/wsdbm__friendOf
	VP	<sorg__email>	9087
	SS	<sorg__email><wsdbm__friendOf>	3578	0.39
------
