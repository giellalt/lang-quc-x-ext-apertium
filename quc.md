

# Faroese disambiguator 

Usage, in `lang-fao`:
`cat text.txt|hfst-tokenize -cg tools/tokenisers/tokeniser-disamb-gt-desc.pmhfst |vislcg3 -g src/cg3/disambiguator.cg3`

This file documents the [Faroese disambiguator file](http://github.com/giellalt/lang-fao/blob/main/src/cg3/disambiguator.cg3) .

## Delimiters, tags and sets



















* LIST NAGD = Nom Acc Gen Dat ; # 
* LIST AGD = Acc Gen Dat ; # 
* LIST GENDER = Msc Fem Neu ; # 
* LIST NUMBER = Sg Pl ; # 




























































































Test: Go for minimal weight. This rules gives priority to lexicalised forms.





























































































































































































* **NumRom** in beginning of sentence


































































































































































































































# MAPPING OF CC AND CS

Mostly we map both @CNP and @CVP, then we select @CNP, after that we remove them so @CVP remains


* **CCasCNPCVP** Map (@CNP @CVP) to CC

* **killAllahtenotCS** All occurrences of "at" are CSs.







* Kill Sem/ID

* **killAllCNP** removes all remaining @CNP

* **XCC-CS** removes CC and CS with no synttag

* **ErrOrth** goes for correct forms






* **X** removes readings with no syntax

* * *
<small>This (part of) documentation was generated from [../src/cg3/disambiguator.cg3](http://github.com/giellalt/lang-quc/blob/main/../src/cg3/disambiguator.cg3)</small>
S Y N T A C T I C   F U N C T I O N S   F O R   S Á M I

Sámi language technology project 2003-2018, University of Tromsø #

This file adds syntactic functions. It is common for all the Saami













LEFT RIGHT because of apertium



* Sets for POS sub-categories





* Sets for Semantic tags













* Sets for Morphosyntactic properties

































Syntactic tags

* @+FAUXV : finite auxiliary verb 
** ferte: Son ferte oaidnit ollislaš gova. - She must see the whole picture.
* @+FMAINV : finite main verb
** oaidná: Son oaidná ollislaš gova. - She sees the whole picture	
* @-FAUXV : infinite auxiliary verb
** sáhte: In sáhte gáhku borrat. - I cannot eat cake.	
* @-FMAINV : infinite main verb
** oaidnit: Son ferte oaidnit ollislaš gova. - She must see the whole picture.
* @-FSUBJ> : Subject of infinite verb outside the verbal.
** mu: Diet dáhpáhuvai mu dieđikeahttá. - It happened without me knowing about it.
* @-F<OBJ : Subject of infinite verb outside the verbal.
** nuppi: Ulbmil lea oažžut nuppi boagustit. - The goal is to get the other one to laugh.
* @-FOBJ> : Object of infinite verb outside the verbal.
** váldovuoittuid: Sii vurde váldovuoittuid fasket. - They waited to grab the main prizes.
* @SPRED<OBJ : Object of an subsject predicative. (some adjectives are transitive)
** guliid: Mánát leat oažžulat guliid.
* @-FADVL : Adverbial complement of infinite verb outside the verbal.
** várrogasat: Dihkkadeaddji rávve skohtervuddjiid várrogasat mátkkoštit. - The roadman warns snowscooter drivers to drive carefully.
* @-F<PRED : Predicative complement of infinite verb outside the verbal.
** ággan: Jáhkken kulturmáhtu leat oktan ággan.
* @>ADVL : Modifier of an adverbial to the right.
** vaikko: doppe leat vaikko man ollu studeanttat.
* @ADVL< : Komplement for adverbial.
** vahkus: Son málesta guktii vahkus.
* @<ADVL : Adverbial after the main verb.
** dás: Eanet dieđuid gávnnat dás.
* @ADVL> : Adverbial to the left of the main verb
** viimmat: Dál de viimmat asttan lohkat reivve.
* @ADVL>CS : Adverbial modifying subjunction.
** 'beare' pointing at 'danin go': Muhto dus ii leat riekti dearpat su beare danin go sáhtát.
* <hab> : Habitive, specifying an adverbial, e.g. @ADVL> <hab>
** Máhtes: Máhtes lea beana.
* <ext> : Extencial, specifying an subject, e.g. @<SUBJ <ext>
** beana: Máhtes lea beana.
* <logo> : logoforic pronouns, e.g. @>N <logo> (for MT)
* <cs> : 
* @>N : Modifier of a noun to the right.
** geavatlaš: Ráđđehussii lea geavatlaš politihkka deaŧalaš. - For the government, practical politics is important.
* @N< : Complement of noun to the left.
** vihtta: Mun boađán diibmu vihtta.
* @>A : Modifier of an adjective to the right.
** juohke: Seminára lágiduvvo juohke nuppi jagi.
* @P< : Complement of preposition.
** soađi: Dat dáhpáhuvai maŋŋel soađi.
* @>P : Complement of postposition.
** riegádeami: Seta riegádeami maŋŋel Áttán elii vel 800 jagi.
* @HNOUN : Stray noun in sentence fragment.
** muittut: Fidnokurssa muittut.
* @INTERJ : Interjection.
** Hei: Hei, boađe!
* @>Num : Attribute of numeral to the right.
** dušše: Mun ledjen dušše guokte mánu doppe.
* @Pron< : Complement of pronoun to the left.
** Birehiin: Moai Birehiin leimme doppe.
* @>Pron : Modifyer of pronoun to the right.
** vaikko: Olmmoš sáhttá bargat vaikko maid.
* @Num< : Complement of numeral to the left.
** girjjiin: Dat lea okta min buoremus girjjiin.
* @OBJ : Object, the verb is not in the sentence (ellipse)
* @<OBJ : Object, the verb is to the left.
** gávtti: Son goarru gávtti.
* @OBJ> : Object, the verb is to the right.
** filmma: Dán filmma leat Kárášjoga nuorat oaidnán.
* @OPRED : Object predicative, the verb is not in the sentence (ellipse).
* @<OPRED : Object predicative, the verb is to the left.
** buriid: Son ráhkada gáhkuid hui buriid.
* @OPRED> : Object predicative, the verb is to the right.
** dohkkemeahttumin: Son oinnii dohkkemeahttumin bargat ášši nu.
* @PCLE : Particle.
** Amma: Amma mii eat leat máksán? - We have not paid, have we?
* @COMP-CS< : Complement of subjunction.
** vejolaš: Dat šaddá nu buorre go vejolaš.
* @SPRED : Subject predicative, the verb is not in the sentence (ellipse).
* @<SPRED : Subject predicative, the verb is to the left.
** árgabivttas: Ovdal lei gákti árgabivttas.
* @SPRED> : Subject predicative, the verb is to the left.
** álbmogin: Sápmelaččaid historjá álbmogin lea duháhiid jagiid boaris.
* @SUBJ : Subject, the finite verb is not in the sentence (ellipse).
* @<SUBJ : Subject, the finite verb is to the left.
** gákti: Ovdal lei gákti árgabivttas.
* @SUBJ> : Subject, the finite verb is to the right.
** Son: Son lea mu oabbá. - Sheis my sister.
* @PPRED : Predicative for predicative.
* @APP : Apposition
* @APP-N< : Apposition to noun to the left.
** oahpaheaddji: Oidnen Ánne, min oahpaheaddji.
* @APP-Pron< : Apposition to pronoun to the left.
** boazodoalloáirasat: Ja moai boazodoalloáirasat áigguime vaikko guovttá joatkit barggu.
* @APP>Pron : Apposition to noun to the right.
* @APP-Num< : Apposition to numeral to the left.
* @APP-ADVL< : Apposition to adverbial to the left.
** bearjadaga: Mun vuolggán ihttin, bearjadaga.
* @VOC : Vocative
** Miss Turner : Bures boahtin deike, Miss Turner! - Welcome her, Miss Turner!
* @CVP : Conjunction or subjunction that conjoins finite verb phrases.
** go : Leago guhkes áigi dassá go Máreha oidnet? - Is it a long time since you saw Máret?
* @CNP : Local conjunction or subjunction.
** vai : Leago nieida vai bárdni? - Is it a girl or a boy?
* @CMPND
* @X : The function is unknown, e.g. because of that the word is unknown











Tag sets


































































































* Sets for verbs


** V is all readings with a V tag in them, REAL-V should
be the ones without an N tag following the V.
The REAL-V set thus awaits a fix to the preprocess V ... N bug.



* The set COPULAS is for predicative constructions







* NP sets defined according to their morphosyntactic features







* The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression __WORD - premodifiers__.












The set __NOT-NPMOD__ is used to find barriers between NPs.
Typical usage: ... (*1 N BARRIER NPT-NPMOD) ...
meaning: Scan to the first noun, ignoring anything that can be
part of the noun phrase of that noun (i.e., "scan to the next NP head")






* Miscellaneous sets























* Border sets and their complements











ADLVCASE




* Syntactic sets





These were the set types.





Numeral outside the sentence




HABITIVE MAPPING






* __hab1__ hab aux leat

* __hab_numo1__ hab copula comma comma N+Nom

* __hab_numo2__ copula nu mo/go hab


* __leahab__ copula nu mo/go hab

* __hab2__ hab auxv adv leat

* __hab3__ (<hab> @ADVL>) for asdf hab-actor and hab-case; if leat to the right, and Nom to the right of leat. Lots of restrictions.

* __hab3__ (<hab> @ADVL>) for asdf hab-actor and hab-case; if leat to the right, and Nom to the right of leat. Lots of restrictions.

* __hab3__ (<hab> @ADVL>) for asdf hab-actor and hab-case; if leat to the right, and Nom to the right of leat. Lots of restrictions.

* __hab3__ (<hab> @ADVL>) for hab-actor and hab-case; if leat to the right, and Nom to the right of leat. Lots of restrictions.





* __hab_main__ (<hab> @ADVL>) for hab-actor and hab-case; if leat to the right, and Nom to the right of leat. Lots of restrictions.


* __habInf__ hab lea inf

* __habNomLeft__ Nom or Num + gen hab lea

* __habAdvl__ Ii han ovttasge du sogas leat dat namma.

* __hab4__ hab cc hab leat



* __hab6__ lea go hab -- leago hab

* __hab7__ lea go hab

* __hab8__ This is not HAB Ellii šattai hoahppu.
* __hab5__  This is not HAB Mánás gollot gieđat.

* __hab9__ prop ord-hab leat

* __hab10__ prop ord-hab leat

* __habDain__ (<hab> @ADVL>) for (Pron Dem Pl Loc) if leat followed by Nom to the right
* __habDain2__ 


* __habRel__ # before relative clause

* __habEllipse__ Buot gánddain lea dreassa, nieiddain fas gákti.

* __habGen__ (<hab> @<ADVL) hab for Gen; if Gen is located in the end of the sentence and Nom is sentence initial

* __habGenQst__ (<hab> @<ADVL) hab for Gen; in a question sentence. Gen is located sentence initially and SUBJ is found to the right. To the right of SUBJ is copulas

















* __n<titel1__ (@N<) for ("jr") or ("sr"); if first one to the left is Prop



* __n<titel2__ (@N<) for INITIAL; if first one to the left is a noun, or if to the left of you is a single letter which is part of a noun conjunction ''bustávas e ja f gáibiduvvo''


* __n<:com__ (@N<) for (Sg Com); if first one to the left is Coll










* __>nAttr__ (@>N) for Attr; if there is a noun to your right

* __n>Indef__ (Pron Indef Attr); if eará is to the right

* __n>Indef__ (Pron Indef Com); if eará is to the right


* __>nNum__ (@>N) for numerals if; there is a noun to your right. You are not allowed to be (Sg Nom), (Sg Acc) or (Sem/Date)






* __noun>n__ (@>N) for Gen; if there is a noun to your right. Restrictions: Not if you are: a time related word. Not if you are OKTA with Pl Loc to your right. Not if CC is to your right followed by another Gen and then Po. Not if you are HUMAN and to your right is Actio Nom folloed by a noun.










* __>nTime__ (@>N) for Gen TIME-N; if timenoun to your right. Restrictions: Not if you are a OKTA Nom with Pl Loc to your right. Not if CC followed by Gen, followed by Po to your right. Not if COMMA to your right




* __>ntittel__ (@>N) for (Sg Nom TIME-N) or (Nom Der/NomAg); if to your right is Sem/Mal, Sem/Fem, Sem/Sur

* __>nplc__ (@>N) for (Sg Nom Prop Sem/Plc), if to your right is Sem/Plc


* __>nALU__ (@>N) for Sg Acc numerals; when a measure-noun to the right



* __>NTime__ (@>N) for Gen; if you are TIME-N with BOC to your left, and PREGEN to your right



* __n<:Refl__ (@N<) for (Refl Nom); if to the left is (N Nom), or if first one to the left is a finite mainverb with a (N Nom) to the left


* __>pron1__ (@>Pron) for GRADE-ADV, DUSSE, BUOT if; first one to the right is Pron

* __>pron2__ (@>Pron) for (Refl Nom) if; first one to the right is Refl

* __>pron3__ (@>Pron) for (Pron Recipr) if; first one to the right is (Pron Recipr)

* __vaikko__ (@>Pron) for vaikko if; first one to the right is Indef

* __vaikkoman__ (@>ADVL) for vaikko if; first one to the right is man

* __dasmaŋŋel__ (@>ADVL) for vaikko if; first one to the right is man

* __adv>advl__ (@>ADVL) 

* __adv>advl__ (@>ADVL) 






* __BOSvoc__ (@VOC) for HUMAN Nom; if sentence initial. To the right is comma. No nom-cased HUMAN followed by comma or CC is allowed to the right. There should not be a relative clause to the right, because then you are likely to be SUBJ



















* __voc__ (@VOC) for Nom HUMAN; if comma to the left and an second person verb or pronoun to the left. To the right is the end of the sentence
































* __Particle<subj __ (@PCLE)


* __spred<obj__ (@SPRED<OBJ) for Acc; the object of an SPRPED. Not to be mistaken with OPRED. If SPRED is to the left, and copulas is to the left of it. Nom or Hab are found sentence initially.






* __Hab<subj__ (<ext> @<SUBJ) for Nom; if copulas, goallut or jápmit is FMAINV and habitive or human Loc is found to the left. OR: if Ill or @Pron< followed by HAB are found to the left.



* __Hab<subj__ (<ext> @<SUBJ) with relative clause in between


* __Hab>Advlcase<subj__ (<ext> @<SUBJ) for Nom; it allows adverbials with Ill/Loc/Com/Ess to be found inbetween HAB and <ext>.

* __Nom>Advlcase<subj__ (<ext> @<SUBJ) for Nom; it allows adverbials with Ill/Loc/Com/Ess to be found inbetween Nom and <ext> @<SUBJ.

* __<extSubj__ (<ext> @<SUBJ) for Nom; if copulas to the left, and some kind of adverb, N Loc, time related word or Po to the left of it. OR: if Ill or @Pron< to the left, followed by copulas and the before mentioned to the left of copulas.

* __<extSubj__ (<ext> @<SUBJ) for sma Nom; if some kind of adverb to the left, N Loc, time related word or Po to the left of it. 


* __<extSubjA__ (<ext> @<SUBJ) for A - TEST WITHOUT THIS ONE

* __<extSubj__ (<ext> @<SUBJ) for Nom; if leat to the left and sentenceboundary



* __<extSubj__ (<ext> @<SUBJ) for Nom, but not for Pers. To the left boahtit or heaŋgát as MAINV, and futher to the left is some kind of place related word, or time related word

* __loc<extSubj__ (<ext> @<SUBJ) for Nom

* __<spred__ (@<SPRED) for Nom; if Nom to the left, copulas to the left of Nom, and a time related word to the left of it.


* __<extQst1__ (<ext> @<SUBJ) for Nom; in an existential sentence. To your left is hab, some kind of place or time-word or Po. This is a Qst-sentence so the qst-pcle is attached to leat or following leat

* __<extQst2__ (<ext> @<SUBJ) for Nom; in an existential sentence. To your left is leat and it is sentence initial. No attributes or other words are allowed inbetween (because then you are SPRED), except the attribute muhtun, muhtin

* __extQst3>__ (<ext> @SUBJ>) for Nom; if habitive first one to the left, followed by copulas.

* __extQst3>__ (<ext> @SUBJ>) for Nom; if habitive first one to the left, followed by copulas.


* __<extsubjcoor__ (<ext> @<SUBJ) for Nom. Coordination

* Sem/Year








* __<spredQst__ (@<SPRED) for Nom; in a typically question sentence; You are not allowed to be Pers or human. The special part is that Nom is not allowed to your right

* __<spredQst2__ (@<SPRED) for (A Nom); in a typically question sentence; You are SPRED if (N Nom) is to your left and leat + qst is to the left

* __<spredQst3__ (@<SPRED) for (A Nom); you are SPRED when you are (A Nom) and to your right is (N Nom). This is a Qst-sentence, so copulas is found to your left

* __<spredQst4__ (@<SPRED) for Nom; but only in a qst-sentence where there is no chance of you beeing the subj

* __<NomBeforeSpred__ (@<SPRED) for (A Nom) if; Nom to the left, and copulas is to the left of Nom. There is no Nom allowed to the right of copulas! To avoid messing with coordination: ja, dahje and comma are not allowed to your left. Comma is not allowed to your right; if so then you are likely to be coordinated

* __<spred__ (@<SPRED) for A Nom or N Nom if; the subject Nom is on the same side of copulas as you: on the right side of copulas

* __<spredVeara__ (@<SPRED) for veara + Nom; if genitive immediately to the right, and intransitive mainverb to the right of genitive

* __leftCop<spred__ (@<SPRED) for Nom; if copulas is the main verb to the left, and there is no Ess found to the left of cop (note that Loc is allowed between target and cop). OR: if you are Coll or Sem/Group with copulas to your left.

* __<spredLocEXPERIMENT__ (@<SPRED) for material Loc; if you are to the right of copulas, and the Nom to the left of copulas is not a hab-actor

* __NumTime__ (@<SPRED) for A Nom

* __<spredSg__ (@<SPRED) for Sg Nom

* __<spredPg__ (@<SPRED) for Pl Nom

* __<spred__ (@<SPRED) for Nom; if copulas to the left, and Nom or sentence boundary to the left of copulas. First one to the right is EOS.

* __COP<spredEss__ (@<SPRED) for N Ess

* __spredEss>__ (@SPRED>) for N Ess; if copulas to the right of you, and if an NP with nom-case first one to your left.

* __GalleSpred>__ (@SPRED>) for Num Nom; if sentence initial

* __spredSgMII>__ (@SPRED>)

* __spredšaddat>__ (@SPRED>)


* __r492>__ (@SPRED>) for Interr Gen; consisting only of negations. You are not allowed to be MII. You are not allowed to have an adjective or noun to yor right. You are not allowed to have a verb to your right; the exception beeing an aux.



* __AdjSpredSg>__ (@SPRED>) for A Sg Nom; if copulas to the right, but not if A or @<SPRED are found to the right of copulas





* __Spred>SubjInf__ (@SPRED>) for Nom; if copulas to the right, and the subject of copulas is an Inf to the right

* __spredCoord__ (@<SPRED) coordination for Nom; only if there already is a SPRED to the left of CNP. Not if there is some kind of comparison involved.















* __subj>Sgnr1__ (@SUBJ>) for Nom Sg, including Indef Nom if; VFIN + Sg3 or Pl3 to the right (VFIN not allowed to the left)




* __subj>Du__ (@SUBJ>) for dual nominatives, including Coll Nom. VFIN + Du3 to the right.
* __subj>Pl__ (@SUBJ>) for plural nominatives, including Coll and Sem/Group. VFIN + Pl3 to the right.

* __subj>Pl__ (@SUBJ>) for plural nominatives


* __subj>Sg__ (@SUBJ>) for Nom Sg; if VFIN + Sg3 to the right.

* __Sg<subj__ (@<SUBJ) for Nom Sg; if VFIN Sg3 or Du2 to the left (no HAB allowed to the left).

* __Du<subj__ (@<SUBJ) for Nom Coll if; a dual third person verb is found to the left

* __PlDu<subj__ (@<SUBJ) for (N Nom Pl), (Sem/Group Nom), (Coll Nom), (Pron Nom Pl) if; a verb is Pl3 or Du3 to your left. The verb is not allowed to be copulas with a place, Loc or time noun to its left

* __copPl3<subj__ (@<SUBJ) for Nom Pl; you don't to be a noun, only Nom Pl. To the left is copulas and first one to the right is @<SPRED
























* __-fsubj>__ (@-FSUBJ>) for HUMAN Gen; in a NP-clause. To your right is Actio Nom followed by a noun



















* __f<advl__ (@-F<ADVL) for infinite adverbials






* __f<advl__ (@-F<ADVL) for infinite adverbials









* __s-boundary=advl>__ (@ADVL>) for ADVL that resemble s-boundaries. Mainverb to the right.





* __diibmuadvl>__ (@ADVL>) for (diibmu Nom) if first one to the right is Num


* __-fsubj__ (@-FSUBJ>) for HUMAN Acc after DADJAT verbs



* __-fobj>__ (@-FOBJ>) for Acc if front of abessive, gerundium, actio locative, perfectum participle or infinitive. First one to the right not allowed to be Acc though

* __-fobj>__ (@-FOBJ>) for Acc if human with ADVL-case to the left and transitive infinitive OBJ to the right. First one to the right not allowed to be Acc though











* __advl>mainV__ (@ADVL>) if; finite mainverb not found to the left, but the finite mainverb is found to the right.

























* __V<advl__ (@<ADVL) if; finite mainverb found to the left. Not if a comma is found immediately to the left and a finite mainverb is located somewhere to the right of this comma.





* __advl>v__ (@ADVL>) if; you are ADVL, time-noun or Sem/Route and there is a finite verb to the right in the clause, or if to your right is: de followed by a finite verb. OR: if you are a time-nound and to your right is: go or sentenceboundary followed by a finite verb



* __<advlPoPr__ (@<ADVL) for Po or Pr; if mainverb to the left.
* __advlPoPr>__ (@<ADVL) for Po or Pr; if mainverb to the right.

* __BOSPo>__ (@ADVL>) for Po; if trapped between BOS to the right and S-BOUNDARY OR COMMA to the left, because the main verb will then automatically be on your right side.

* __<advlComIll__ (@<ADVL) only if; you are Com OR Ill. To your left is a mainverb, and to your right a sentenceboundary, because we don't want there to be another mainverb you potentially could belong to

* __<advlEOS__ (@<ADVL) for Po or Pr or Loc; if you are found at the very end of a sentence. A mainverb is needed to the left though.


* __<advlGen__ (@<ADVL) for (N Gen) if mainverb to the left and no noun to the right


* __<opredgohcodit__ (@<OPRED) for Ess


* __advlEss>__ (@<ADVL) for weather and time Ess, if FMAINV to the left.




* __comma<advlEOS__ (@<ADVL) for Adv if; mainverb is to the left. Comma to the left and mainverb to the right in the same clause is not allowed


* __advl>inbetween__ (@ADVL>) for Adv; if inbetween two sentenceboundaries where no mainverb is present.

* __comma<advlEOS__ (@<ADVL) for Adv if; comma found to the left and the finite mainverb to the left of comma. To the right is the end of the sentence.



* __BOSadvl>__ (@ADVL>) if; you are N Loc or N Ill and found sentence initially and there is a main verb somewhere to the right. No barrier for the mainverb; based on the thought that first one to your right is probably a sentenceboundary.

* __cleanupILL<advl__ (@<ADVL) for N Ill if; there are no boundarysymbols to your left, if you arent already @N< OR @APP-N<, and no mainverb is to yor left.



* __cleanupPo__ (@ADVL) for Po: This rule tags all Po:s as ADVL if they haven't gotten a tag somewhere along the way.

* __cleanupPr__ (@ADVL) for Po: This rule tags all Pr:s as ADVL if they haven't gotten a tag somewhere along the way.




* __-fsubj>asAcc__ (@-FSUBJ>) for HUMAN Acc; if there is a verb @-F<OBJ to your left

* __-f<obj__ (@-F<OBJ) for Acc if there is a transitive verb + SYN-V to your left

* __-fsubj>IV__ (@-FSUBJ>) for Acc; if there is an IV-verb acting as a @-F<OBJ to your right

* __-fsubj>IV__ (@-FSUBJ>) for Acc; if there is an TV-verb acting as a @-F<OBJ to your right followed by an Acc

* __-fsubj>asGen__ (@-FSUBJ>) for Gen;

* __f<subj__ (@-F<SUBJ) for Nom if; (V @-F<OBJ) to the left.







* __<opredAAcc__ (@<OPRED) for A Acc; if an other accusative to the left, and a transtive verb to the left of it. OR: if a transitive verb to the left, and an accusative to the left of it.

* __TV<obj__ (@<OBJ) for Acc; if there is a transitive mainverb to the left in the clause. Not for Rel. Not if you are a numeral followed by a measure-noun



!sma object


* __<advlMeasr__ (@<ADVL) for (Num Acc); if finite IV-mainverb to the left, measure-noun to the right

* __<objMeasr__ (@<OBJ) for Num Acc; if finite TV-mainverb to the left, measure-noun to the right

* __<advlMeasr2__ (@<ADVL) for MEASR-N + Acc; if (Num Pl) to the left and mainverb to the left of it

* __advlMeasr>__ (@ADVL>) for Num Acc;


* __Obj>__ (@OBJ>) for Acc; if there is a finite mainverb to the right in the clause. A really simple rule with no other restrictions..

* __s-boun<obj__ (@<OBJ) for Acc; if sentenceboundary to your left and a transitive mainverb to the left futher to the left

* __<objIV__ (@<OBJ) for Acc; if there is an intransitive mainverb in the clause. Not for Rel or Num. Not if you are a numeral followed by a measure-noun







* __<advlEss__ (@<ADVL) for ESS-ADVL if; FMAINV to the left

* __IV<spredEss__ (@<SPRED) for N Ess if; FMAINV to the left is intransitive or bargat

* __<opredEss__ (@<OPRED) for (N Ess), (A Ess) if; transitive mainverb to the left in the clause. If accusative to the left or to the right, or if Inf or ahte to the right, or if there is a noun to the right followed by an Inf

* __Acc<opredEss__ (@<OPRED) for (N Ess), (A Ess) if; transitive mainverb to the left in the clause, and an accusative cased Rel left to the verb

* __onlyV<opred__ (@<OPRED) for (N Ess) if; there is a transitive mainverb to the left. Usually there needs to be an Acc to the left, but here it is not needed

* __onlyV<opred2__ (@<OPRED) for (N Ess) if;











SUBJ MAPPING - leftovers

* __subj>ifV__ (@SUBJ>) for NP-HEAD-NOM, DUPRON or (Num Nom) if; a finite mainverb is found to the right. This is a cleanup rule for subjects

* __hnoun>ifV__ (@SUBJ>) for NP-HEAD-NOM, DUPRON if. The counterpart of subj>ifV. You are HNOUN if there is a finite verb to your right, but NOT if there is a finite verb after a relative clause


OBJ MAPPING - leftovers

<logo> MAPPING for MT - experimental


HNOUN MAPPING









* __@<ADVLcoor__ (@<ADVL) for ADVLCASEAdv if @CNP to the left and ADVL to the left of it




! __missingX__ adds @X to all missings





! __therestX__ adds @X to all what is left, often errouneus disambiguated forms






For Apertium:
The analysis give double analysis because of optional semtags. We go for the one with semtag.







* * *
<small>This (part of) documentation was generated from [../src/cg3/functions.cg3](http://github.com/giellalt/lang-quc/blob/main/../src/cg3/functions.cg3)</small>
C O M M O N  S Á M I  D E P E N D E N C Y   G R A M M A R

This dep file is for sma, sme, smj, sje.

DELIMITERS

Sentence delimiters are the following: <.> <!> <?> <...> <¶>


TAGS AND SETS


N
V
A
Adv
CC
CS
Inf
Sup
Neg
Num
Po
Pr

Pcle
Prop

Pron
IV
TV
COMMA
DASH
CITATION to keep colouring we add a "
HYPHEN
QMARK
PUNCT
LEFT
RIGHT
CLB
Ind
Pot
Impr
ImprtII
Cond
ConNeg
Caus causative eus
VGen
Interj
ABBR
ACR
Prs
Prt
Cmpnd
RCmpnd
PrfPrc
PrsPrc
Actor
Actio
Ger
Indef
Nom
Acc
Ill
Com
Gen
Ess

IM For fao

POS sub-categories


















































































Syntactic tags and sets

!Syntactic tags in input to this file


!Syntactic tags added in this file

* @FMV : finite main verb
** oaidná: Son oaidná ollislaš gova. - She sees the whole picture
* infinite main verb
* @FAUX : finite auxiliary verb
** ferte: Son ferte oaidnit ollislaš gova. - She must see the whole picture. 
* @FMVdic : finite main verb introducing direct speech
* @IMVdic : infinite main verb introducing direct speech
* @FS-IMV : infinite main verb of subclause 
* @FS-IAUX : infinite auxiliary verb in subclause
* @FS-N<IAUX : infinite auxiliary verb of a relative subclause
* @FS-N<IMV : infinite main verb of a relative subclause
* @FS-OBJ : finite verb in subclause functioning as object
* @FS-OBJ> : finite verb in subclause functioning as object
* @FS-<OBJ : finite verb in subclause functioning as object
* @FS-SUBJ : finite verb in subclause functioning as subject
* @FS-SUBJ> : finite verb in subclause functioning as subject
* @FS-<SUBJ : finite verb in subclause functioning as subject
* @FS-ADVL> : finite verb in subclause functioning as adverbial to the left of the main clause
* @FS-<ADVL : finite verb in subclause functioning as adverbial to the right of the main clause
* @FS-ACC>> : finite verb in subclause, object of speechact verb
* @S< : a clause modifying a sentence to the right of it
* @FS-ADVL : finite verb in subclause ...
* @-FS-<ADVL : infinite subclause - eus
* @-FS-ADVL> : infinite subclause - eus
* @FS-N< : relative clause to N
* @FS->N : relative clause to N to the left side of it - eus
* @FS-VFIN< : finite verb in sentence, statement
** eai: Idja ii leat šat, eai ge sii dárbbaš lámppá dahje beaivváža čuovgga, dasgo Hearrá Ipmil lea sin čuovga. - The night is not anymore, they do not need the lamp- or day- light either, because God the Lord is their light.
* @FS-<APP : finite subclause functioning as an apposition
* @ICL-ADVL : non-finite subclause ...
* @ICL-AUX< : "right" argument of auxiliary (?)
* @ICL-OBJ : infinitival clause object
* @ICL-SUBJ : infinitival clause subject
* @ICL-P< : infinitival clause complement of preprosition
* @IAUX : non-finite auxiliary
* <mv> : main verb. A temporarily tag omitted in the end of the file.
* <aux> : auxilary verb. A temporarily tag omitted in the end of the file.


!fao syntags

* @>V

!kal syntags

* @INS :
* @<INS :
* @INS> :

!eus syntags

* @FS-SPRED : finite verb in subclause functioning as a subject predicate - eus, but not sure if in use

!Syntactic set definitions












Dep grammar



Correction rules



* __muitalit__


* __XX__

* __XX__

* __XX__



* __faoSumId=Rel__
















The finite verb































Mapping rules









































































































































__lgRemove__ removes the language tags <sma>, <sme>,  etc, before proceeding to the dep file.






* * *
<small>This (part of) documentation was generated from [../src/cg3/dependency.cg3](http://github.com/giellalt/lang-quc/blob/main/../src/cg3/dependency.cg3)</small>
# Symbol affixes





* * *
<small>This (part of) documentation was generated from [../src/fst/affixes/symbols.lexc](http://github.com/giellalt/lang-quc/blob/main/../src/fst/affixes/symbols.lexc)</small>


We describe here how abbreviations are in K'iche' are read out, e.g.
for text-to-speech systems.

For example:

* s.:syntynyt # ;  
* os.:omaa% sukua # ;  
* v.:vuosi # ;  
* v.:vuonna # ;  
* esim.:esimerkki # ; 
* esim.:esimerkiksi # ; 


* * *
<small>This (part of) documentation was generated from [../src/transcriptions/transcriptor-abbrevs2text.lexc](http://github.com/giellalt/lang-quc/blob/main/../src/transcriptions/transcriptor-abbrevs2text.lexc)</small>















































% komma% :,      Root ;
% tjuohkkis% :%. Root ;
% kolon% :%:     Root ;
% sárggis% :%-   Root ; 
% násti% :%*     Root ; 

* * *
<small>This (part of) documentation was generated from [../src/transcriptions/transcriptor-numbers-digit2text.lexc](http://github.com/giellalt/lang-quc/blob/main/../src/transcriptions/transcriptor-numbers-digit2text.lexc)</small>
[ L A N G U A G E ]  G R A M M A R   C H E C K E R









# DELIMITERS


# TAGS AND SETS



## Tags


This section lists all the tags inherited from the fst, and used as tags
in the syntactic analysis. The next section, **Sets**, contains sets defined
on the basis of the tags listed here, those set names are not visible in the output.




### Beginning and end of sentence
BOS
EOS



### Parts of speech tags

N
A
Adv
V
Pron
CS
CC
CC-CS
Po
Pr
Pcle
Num
Interj
ABBR
ACR
CLB
LEFT
RIGHT
WEB
QMARK
PPUNCT
PUNCT

COMMA
¶



### Tags for POS sub-categories

Pers
Dem
Interr
Indef
Recipr
Refl
Rel
Coll
NomAg
Prop
Allegro
Arab
Romertall


### Tags for morphosyntactic properties

Nom
Acc
Gen
Ill
Loc
Com
Ess
Ess
Sg
Du
Pl
Cmp/SplitR
Cmp/SgNom Cmp/SgGen
Cmp/SgGen
PxSg1
PxSg2
PxSg3
PxDu1
PxDu2
PxDu3
PxPl1
PxPl2
PxPl3
Px

Comp
Superl
Attr
Ord
Qst
IV
TV
Prt
Prs
Ind
Pot
Cond
Imprt
ImprtII
Sg1
Sg2
Sg3
Du1
Du2
Du3
Pl1
Pl2
Pl3
Inf
ConNeg
Neg
PrfPrc
VGen
PrsPrc
Ger
Sup
Actio
VAbess



Err/Orth



### Semantic tags

Sem/Act
Sem/Ani
Sem/Atr
Sem/Body
Sem/Clth
Sem/Domain
Sem/Feat-phys
Sem/Fem
Sem/Group
Sem/Lang
Sem/Mal
Sem/Measr
Sem/Money
Sem/Obj
Sem/Obj-el
Sem/Org
Sem/Perc-emo
Sem/Plc
Sem/Sign
Sem/State-sick
Sem/Sur
Sem/Time
Sem/Txt

HUMAN

HAB-ACTOR
HAB-ACTOR-NOT-HUMAN


PROP-ATTR
PROP-SUR



TIME-N-SET


###  Syntactic tags

@+FAUXV
@+FMAINV
@-FAUXV
@-FMAINV
@-FSUBJ>
@-F<OBJ
@-FOBJ>
@-FSPRED<OBJ
@-F<ADVL
@-FADVL>
@-F<SPRED
@-F<OPRED
@-FSPRED>
@-FOPRED>
@>ADVL
@ADVL<
@<ADVL
@ADVL>
@ADVL
@HAB>
@<HAB
@>N
@Interj
@N<
@>A
@P<
@>P
@HNOUN
@INTERJ
@>Num
@Pron<
@>Pron
@Num<
@OBJ
@<OBJ
@OBJ>
@OPRED
@<OPRED
@OPRED>
@PCLE
@COMP-CS<
@SPRED
@<SPRED
@SPRED>
@SUBJ
@<SUBJ
@SUBJ>
SUBJ
SPRED
OPRED
@PPRED
@APP
@APP-N<
@APP-Pron<
@APP>Pron
@APP-Num<
@APP-ADVL<
@VOC
@CVP
@CNP
OBJ
<OBJ
OBJ>
<OBJ-OTHERS
OBJ>-OTHERS
SYN-V
@X





## Sets containing sets of lists and tags

This part of the file lists a large number of sets based partly upon the tags defined above, and
partly upon lexemes drawn from the lexicon.
See the sourcefile itself to inspect the sets, what follows here is an overview of the set types.



### Sets for Single-word sets

INITIAL


### Sets for word or not

WORD
REAL-WORD
REAL-WORD-NOT-ABBR
NOT-COMMA


### Case sets

ADLVCASE

CASE-AGREEMENT
CASE

NOT-NOM
NOT-GEN
NOT-ACC

### Verb sets


NOT-V

### Sets for finiteness and mood

REAL-NEG

MOOD-V

NOT-PRFPRC


### Sets for person

SG1-V
SG2-V
SG3-V
DU1-V
DU2-V
DU3-V
PL1-V
PL2-V
PL3-V





### Pronoun sets

















### Adjectival sets and their complements




### Adverbial sets and their complements




### Sets of elements with common syntactic behaviour


### NP sets defined according to their morphosyntactic features








### The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.





















### Border sets and their complements











### Grammarchecker sets








* * *
<small>This (part of) documentation was generated from [../tools/grammarcheckers/grammarchecker.cg3](http://github.com/giellalt/lang-quc/blob/main/../tools/grammarcheckers/grammarchecker.cg3)</small>