Class {
	#name : #PageTest,
	#superclass : #TestCase,
	#category : #GladStoriesEngineTests
}

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

{ #category : #'as yet unclassified' }
PageTest >> testNextPageWithText [
| p |

p := Page new.
p addNextPage: Page new withText: 'Option 1'.
p addNextPage: Page new withText: 'Option 2'.

self assert: p next size equals: 2

]
