SELECT tab0.v1 AS v1 , tab6.v7 AS v7 , tab4.v5 AS v5 , tab5.v6 AS v6 , tab3.v4 AS v4 , tab8.v9 AS v9 , tab2.v3 AS v3 , tab7.v8 AS v8 , tab1.v2 AS v2 , tab9.v10 AS v10 
 FROM    (SELECT obj AS v1 
	 FROM wsdbm__follows$$1$$
	 
	 WHERE sub = 'wsdbm:User71825' AND OSwsdbm__likes=true
	) tab0
 JOIN    (SELECT sub AS v1 , obj AS v2 
	 FROM wsdbm__likes$$2$$ 
	 WHERE SOwsdbm__follows=true AND OSrev__hasReview=true
	) tab1
 ON(tab0.v1=tab1.v1)
 JOIN    (SELECT obj AS v3 , sub AS v2 
	 FROM rev__hasReview$$3$$
	 
	 WHERE SOwsdbm__likes=true AND OSrev__reviewer=true
	) tab2
 ON(tab1.v2=tab2.v2)
 JOIN    (SELECT obj AS v4 , sub AS v3 
	 FROM rev__reviewer$$4$$
	 
	 WHERE SOrev__hasReview=true AND OSwsdbm__friendOf=true
	) tab3
 ON(tab2.v3=tab3.v3)
 JOIN    (SELECT obj AS v5 , sub AS v4 
	 FROM wsdbm__friendOf$$5$$
	 
	 WHERE SOrev__reviewer=true AND OSwsdbm__makesPurchase=true
	) tab4
 ON(tab3.v4=tab4.v4)
 JOIN    (SELECT sub AS v5 , obj AS v6 
	 FROM wsdbm__makesPurchase$$6$$
	 
	 WHERE SOwsdbm__friendOf=true AND OSwsdbm__purchaseFor=true
	) tab5
 ON(tab4.v5=tab5.v5)
 JOIN    (SELECT obj AS v7 , sub AS v6 
	 FROM wsdbm__purchaseFor$$7$$
	 
	 WHERE SOwsdbm__makesPurchase=true AND OSsorg__author=true
	) tab6
 ON(tab5.v6=tab6.v6)
 JOIN    (SELECT sub AS v7 , obj AS v8 
	 FROM sorg__author$$8$$ 
	 WHERE SOwsdbm__purchaseFor=true AND OSdc__Location=true
	) tab7
 ON(tab6.v7=tab7.v7)
 JOIN    (SELECT obj AS v9 , sub AS v8 
	 FROM dc__Location$$9$$ 
	 WHERE SOsorg__author=true AND OSgn__parentCountry=true
	) tab8
 ON(tab7.v8=tab8.v8)
 JOIN    (SELECT sub AS v9 , obj AS v10 
	 FROM gn__parentCountry$$10$$
	 
	 WHERE SOdc__Location=true
	) tab9
 ON(tab8.v9=tab9.v9)


++++++Tables Statistic
gn__parentCountry$$10$$	0	VP	gn__parentCountry
	VP	<gn__parentCountry>	240
	SO	<gn__parentCountry><dc__Location>	240	1.0
------
sorg__author$$8$$	2	VP	sorg__author
	VP	<sorg__author>	3975
	SO	<sorg__author><wsdbm__purchaseFor>	2833	0.71
	OS	<sorg__author><dc__Location>	1587	0.4
------
wsdbm__makesPurchase$$6$$	0	VP	wsdbm__makesPurchase
	VP	<wsdbm__makesPurchase>	149998
	SO	<wsdbm__makesPurchase><wsdbm__friendOf>	149998	1.0
	OS	<wsdbm__makesPurchase><wsdbm__purchaseFor>	149998	1.0
------
dc__Location$$9$$	1	VP	dc__Location
	VP	<dc__Location>	40297
	SO	<dc__Location><sorg__author>	1506	0.04
	OS	<dc__Location><gn__parentCountry>	40297	1.0
------
wsdbm__likes$$2$$	2	VP	wsdbm__likes
	VP	<wsdbm__likes>	112401
	SO	<wsdbm__likes><wsdbm__follows>	102458	0.91
	OS	<wsdbm__likes><rev__hasReview>	24460	0.22
------
wsdbm__purchaseFor$$7$$	2	VP	wsdbm__purchaseFor
	VP	<wsdbm__purchaseFor>	150000
	SO	<wsdbm__purchaseFor><wsdbm__makesPurchase>	149998	1.0
	OS	<wsdbm__purchaseFor><sorg__author>	15762	0.11
------
rev__reviewer$$4$$	2	VP	rev__reviewer
	VP	<rev__reviewer>	150000
	SO	<rev__reviewer><rev__hasReview>	149634	1.0
	OS	<rev__reviewer><wsdbm__friendOf>	59279	0.4
------
rev__hasReview$$3$$	1	VP	rev__hasReview
	VP	<rev__hasReview>	149634
	SO	<rev__hasReview><wsdbm__likes>	143202	0.96
	OS	<rev__hasReview><rev__reviewer>	149634	1.0
------
wsdbm__follows$$1$$	1	VP	wsdbm__follows
	VP	<wsdbm__follows>	3289307
	OS	<wsdbm__follows><wsdbm__likes>	787951	0.24
------
wsdbm__friendOf$$5$$	2	VP	wsdbm__friendOf
	VP	<wsdbm__friendOf>	4491142
	SO	<wsdbm__friendOf><rev__reviewer>	1381238	0.31
	OS	<wsdbm__friendOf><wsdbm__makesPurchase>	710206	0.16
------
