SELECT tab3.v0 AS v0 , tab2.v3 AS v3 , tab1.v2 AS v2 
 FROM    (SELECT sub AS v0 
	 FROM sorg__language$$4$$
	 
	 WHERE obj = 'wsdbm:Language0' AND SSrdf__type=true AND SSsorg__description=true AND SSsorg__keywords=true
	) tab3
 JOIN    (SELECT sub AS v0 
	 FROM rdf__type$$1$$ 
	 WHERE obj = 'wsdbm:ProductCategory7' AND SSsorg__description=true AND SSsorg__keywords=true AND SSsorg__language=true
	) tab0
 ON(tab3.v0=tab0.v0)
 JOIN    (SELECT sub AS v0 , obj AS v3 
	 FROM sorg__keywords$$3$$
	 
	 WHERE SSrdf__type=true AND SSsorg__description=true AND SSsorg__language=true
	) tab2
 ON(tab0.v0=tab2.v0)
 JOIN    (SELECT sub AS v0 , obj AS v2 
	 FROM sorg__description$$2$$
	 
	 WHERE SSrdf__type=true AND SSsorg__keywords=true AND SSsorg__language=true
	) tab1
 ON(tab2.v0=tab1.v0)


++++++Tables Statistic
sorg__description$$2$$	3	VP	sorg__description
	VP	<sorg__description>	1502748
	SS	<sorg__description><rdf__type>	1502748	1.0
	SS	<sorg__description><sorg__keywords>	450307	0.3
	SS	<sorg__description><sorg__language>	30991	0.02
------
rdf__type$$1$$	3	VP	rdf__type
	VP	<rdf__type>	14800449
	SS	<rdf__type><sorg__description>	1502748	0.1
	SS	<rdf__type><sorg__keywords>	751190	0.05
	SS	<rdf__type><sorg__language>	51529	0.0
------
sorg__keywords$$3$$	3	VP	sorg__keywords
	VP	<sorg__keywords>	751190
	SS	<sorg__keywords><rdf__type>	751190	1.0
	SS	<sorg__keywords><sorg__description>	450307	0.6
	SS	<sorg__keywords><sorg__language>	15507	0.02
------
sorg__language$$4$$	3	VP	sorg__language
	VP	<sorg__language>	641195
	SS	<sorg__language><rdf__type>	141195	0.22
	SS	<sorg__language><sorg__description>	84928	0.13
	SS	<sorg__language><sorg__keywords>	41644	0.06
------
