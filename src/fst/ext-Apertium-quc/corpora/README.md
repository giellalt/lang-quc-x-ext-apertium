# Corpora

## Available corpora

### Example

This corpus consists of a small set of test sentences which illustrate the different formats and conversions.

* `example.src`: The output of the morphological analyser in Apertium format
* `example.dep`: The dependency trees in VISLCG3 format 
  * The input is `example.ref`, it is passed through `cg-conv -a -l` and then hand-annotated for dependencies
* `example.ref`: The tagged (hand-disambiguated) output of the morphological analyser
* `example.seg`: The segmented generation of the tagged output

The files `example.dep` and `example.seg` can be used to generate CoNLL-U output.

### UTexas

* `utexas.src`: This should be the output of the morphological analyser
* `utexas.ref`: This should be the hand-disambiguated output of the morphological analyser
* `utexas.seg`: This should be corrected, segmented generation of the tagged output 
* `utexas.dep`: Dependency trees in VISLCG3 format
  * The input is sentences from `utexas.ref`, passed through `cg-conv -a -l` and then hand-annotated for dependencies

## Generating CoNLL-U

You can use the script `conllise.py` to convert the output to CoNLL-U format:

```
$ python3 conllise.py ../apertium-quc.quc.udx ../corpora/example.dep ../corpora/example.seg 
# sent_id = 1
# text = Kinya jun rutzil iwach nutijoxelab’!
# text[spa] =  Les doy un cordial saludo, mis estudiantes!
# labels = tijonik-7
1	Kinya	ya	VERB	_	Aspect=Imp|Number[obj]=Sing|Number[subj]=Sing|Person[obj]=3|Person[subj]=1|Valency=2	0	root	_	_
2	jun	jun	NUM	_	_	3	nummod	_	_
3	rutzil	utzil	NOUN	_	Number[psor]=Sing|Person[psor]=3	1	obj	_	_
4	iwach	wach	NOUN	_	NounType=Rel|Number[psor]=Plur|Person[psor]=2	1	obl	_	_
5	nutijoxelabʼ	tijoxel	NOUN	_	Number=Plur|Number[psor]=Sing|Person[psor]=1	1	vocative	_	_
6	!	!	_	_	_	1	punct	_	_

# sent_id = 2
# text = Rajawaxik kak’aman chawe le utijik le lej.
# text[spa] =  Es necesario que te acostumbres a comer tortillas.
# labels = tijonik-41
1	Rajawaxik	rajawaxik	ADJ	_	_	0	root	_	_
2	kakʼaman	kʼamanik	VERB	_	Aspect=Imp|Number[subj]=Sing|Person[subj]=3|Valency=1	1	x	_	_
3-4	chawe	_	_	_	_	_	_	_	_
3	ch	chi	ADP	_	_	4	case	_	_
4	awe	awe	PRON	_	Number=Sing|Person=2|PronType=Pers	2	obl	_	_
5	le	le	DET	_	_	6	x	_	_
6	utijik	tij	VERB	_	Number[psor]=Sing|Person[psor]=3|Valency=2	2	x	_	_
7	le	le	DET	_	_	8	det	_	_
8	lej	lej	NOUN	_	_	6	obj	_	_
9	.	.	_	_	_	1	punct	_	_

```

Note that sentences are aligned based on `sent_id`, so the two files do not have to have identical numbers of
sentences.
