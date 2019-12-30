Class {
	#name : #PageNextTest,
	#superclass : #TestCase,
	#category : #GladStoriesEngineTests
}

{ #category : #tests }
PageNextTest >> testFromMap [
| m dPage |

dPage := Dictionary new.
dPage at:'next' put: { }.
dPage at: 'nodes' put: { }.
m := Dictionary new.
m at: 'text' put: 'Next option'.
m at: 'nextPage' put: dPage.

self assert: (PageNext fromMap: m) text equals: 'Next option'.
self assert: (PageNext fromMap: m) nextPage nodes size equals: 0.
]
