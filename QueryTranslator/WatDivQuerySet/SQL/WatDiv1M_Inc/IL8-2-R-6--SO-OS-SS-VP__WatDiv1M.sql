SELECT tab0.v1 AS v1 , tab6.v7 AS v7 , tab4.v5 AS v5 , tab5.v6 AS v6 , tab3.v4 AS v4 , tab2.v3 AS v3 , tab7.v8 AS v8 , tab1.v2 AS v2 
 FROM    (SELECT obj AS v1 
	 FROM gr__offers$$1$$ 
	 WHERE sub = 'wsdbm:Retailer51' AND OSgr__includes=true
	) tab0
 JOIN    (SELECT sub AS v1 , obj AS v2 
	 FROM gr__includes$$2$$ 
	 WHERE SOgr__offers=true AND OSsorg__director=true
	) tab1
 ON(tab0.v1=tab1.v1)
 JOIN    (SELECT obj AS v3 , sub AS v2 
	 FROM sorg__director$$3$$
	 
	 WHERE SOgr__includes=true AND OSwsdbm__friendOf=true
	) tab2
 ON(tab1.v2=tab2.v2)
 JOIN    (SELECT obj AS v4 , sub AS v3 
	 FROM wsdbm__friendOf$$4$$
	 
	 WHERE SOsorg__director=true AND OSwsdbm__friendOf=true
	) tab3
 ON(tab2.v3=tab3.v3)
 JOIN    (SELECT obj AS v5 , sub AS v4 
	 FROM wsdbm__friendOf$$5$$
	 
	 WHERE SOwsdbm__friendOf=true AND OSwsdbm__likes=true
	) tab4
 ON(tab3.v4=tab4.v4)
 JOIN    (SELECT sub AS v5 , obj AS v6 
	 FROM wsdbm__likes$$6$$ 
	 WHERE SOwsdbm__friendOf=true AND OSsorg__editor=true
	) tab5
 ON(tab4.v5=tab5.v5)
 JOIN    (SELECT obj AS v7 , sub AS v6 
	 FROM sorg__editor$$7$$ 
	 WHERE SOwsdbm__likes=true AND OSwsdbm__makesPurchase=true
	) tab6
 ON(tab5.v6=tab6.v6)
 JOIN    (SELECT sub AS v7 , obj AS v8 
	 FROM wsdbm__makesPurchase$$8$$
	 
	 WHERE SOsorg__editor=true
	) tab7
 ON(tab6.v7=tab7.v7)


++++++Tables Statistic
wsdbm__likes$$6$$	2	VP	wsdbm__likes
	VP	<wsdbm__likes>	11256
	SO	<wsdbm__likes><wsdbm__friendOf>	11256	1.0
	OS	<wsdbm__likes><sorg__editor>	343	0.03
------
sorg__director$$3$$	2	VP	sorg__director
	VP	<sorg__director>	148
	SO	<sorg__director><gr__includes>	145	0.98
	OS	<sorg__director><wsdbm__friendOf>	45	0.3
------
gr__offers$$1$$	0	VP	gr__offers
	VP	<gr__offers>	14179
	OS	<gr__offers><gr__includes>	14179	1.0
------
sorg__editor$$7$$	2	VP	sorg__editor
	VP	<sorg__editor>	129
	SO	<sorg__editor><wsdbm__likes>	125	0.97
	OS	<sorg__editor><wsdbm__makesPurchase>	11	0.09
------
wsdbm__friendOf$$4$$	1	VP	wsdbm__friendOf
	VP	<wsdbm__friendOf>	448135
	SO	<wsdbm__friendOf><sorg__director>	4806	0.01
	OS	<wsdbm__friendOf><wsdbm__friendOf>	177882	0.4
------
gr__includes$$2$$	2	VP	gr__includes
	VP	<gr__includes>	9000
	SO	<gr__includes><gr__offers>	4722	0.52
	OS	<gr__includes><sorg__director>	519	0.06
------
wsdbm__makesPurchase$$8$$	1	VP	wsdbm__makesPurchase
	VP	<wsdbm__makesPurchase>	15000
	SO	<wsdbm__makesPurchase><sorg__editor>	112	0.01
------
wsdbm__friendOf$$5$$	2	VP	wsdbm__friendOf
	VP	<wsdbm__friendOf>	448135
	SO	<wsdbm__friendOf><wsdbm__friendOf>	448135	1.0
	OS	<wsdbm__friendOf><wsdbm__likes>	106881	0.24
------
