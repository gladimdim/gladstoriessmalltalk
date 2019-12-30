Class {
	#name : #PageTest,
	#superclass : #TestCase,
	#category : #GladStoriesEngineTests
}

{ #category : #tests }
PageTest >> testAddNextPageWithText [
| n np |
np := Page new.
n := Page new.
n addNextPage: np withText: 'test1'.


self assert: n next size equals: 1.
self assert: (n next at: 1) text equals: 'test1'
]

{ #category : #tests }
PageTest >> testAddNodeWithText [
| p |

p := Page new.
p addNodeWithText: 'test'.

self assert: p currentNode text equals: 'test'.

]

{ #category : #tests }
PageTest >> testAddNodeWithTextAndImageType [
| p |

p := Page new addNodeWithText: 'test' andImageType: 'cossacks'.

self assert: p currentNode text equals: 'test'.
self assert: p currentNode imageType equals: 'cossacks'
]

{ #category : #tests }
PageTest >> testCanContinue [
|p|

p := Page new.
p addNodeWithText: 'Dima'.
p addNodeWithText: 'Ola'.

self assert: p canContinue equals: true.
p doContinue.
p doContinue.
self assert: p canContinue equals: false.
]

{ #category : #tests }
PageTest >> testCurrentIndex [
|p|

p := Page new.
self assert: p currentIndex equals: 1
]

{ #category : #tests }
PageTest >> testCurrentNode [
|p|

p := Page new.
p addNodeWithText: 'New text'.
self assert: p currentNode text equals: 'New text'
]

{ #category : #tests }
PageTest >> testCurrentText [
|p|

p := Page new.
p addNodeWithText: 'New text'.
self assert: p currentText equals: 'New text'
]

{ #category : #tests }
PageTest >> testDoContinue [
|p|

p := Page new.
p addNodeWithText: 'Dima1'.
self assert: p currentNode text equals: 'Dima1'.
p addNodeWithText: 'Dima2'.
p doContinue.
self assert: p currentNode text equals: 'Dima2'.
]

{ #category : #tests }
PageTest >> testEmptyInitialize [ 
|c|

c := Page new.
self assert: c currentIndex equals: 1.
self assert: c nodes size equals: 0.
self assert: c endType equals: nil.
]

{ #category : #tests }
PageTest >> testFromMap [
| m node |

node := Dictionary new.
node at: 'text' put: 'Text test'.
m := Dictionary new.
m at: 'nodes' put: {node}.
m at: 'next' put: { }.
m at: 'endType' put: 'DEAD'.

self assert: (Page fromMap: m) currentIndex equals: 1.
self assert: (Page fromMap: m) endType equals: 'DEAD'.

]

{ #category : #tests }
PageTest >> testHasNextNode [
| p |

p := Page new nodes: (Array with: (PageNode new text: 'Test')).
self assert: (p currentNode text) equals: 'Test'
]

{ #category : #tests }
PageTest >> testInitialize [ 
|c|

c := Page new.
self assert: c currentIndex equals: 1.
self assert: c nodes size equals: 0.
]

{ #category : #tests }
PageTest >> testNextOptionsText [
| p |
p := Page new.
p addNextPage: Page new withText: 'test1'.
p addNextPage: Page new withText: 'test2'.
p addNextPage: Page new withText: 'test3'.

self assert: p nextOptionsText size equals: 3.
self assert: (p nextOptionsText at: 3) equals: 'test3'
]

{ #category : #tests }
PageTest >> testNextPageWithText [
| p |

p := Page new.
p addNextPage: Page new withText: 'Option 1'.
p addNextPage: Page new withText: 'Option 2'.

self assert: p next size equals: 2

]
