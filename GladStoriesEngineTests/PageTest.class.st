Class {
	#name : #PageTest,
	#superclass : #TestCase,
	#category : #GladStoriesEngineTests
}

{ #category : #tests }
PageTest >> testEmptyInitialize [ 
|c|

c := Page new.
self assert: c currentIndex equals: 0.
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
self assert: c currentIndex equals: 0.
self assert: c nodes size equals: 0.
]
