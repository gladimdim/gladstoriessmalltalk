Class {
	#name : #PageNodeTest,
	#superclass : #TestCase,
	#category : #GladStoriesEngineTests
}

{ #category : #tests }
PageNodeTest >> testFromMap [
| m |
m := Dictionary new.
m at: 'text' put: 'Value1'.
m at: 'imageType' put: 'steppe'.

self assert: (PageNode fromMap: m) text equals: 'Value1'.
self assert: (PageNode fromMap: m) imageType equals: 'steppe'.
]

{ #category : #tests }
PageNodeTest >> testWithText [
|c|

c := PageNode withText: 'Dima'.
self assert: c text equals: 'Dima'.
self assert: c imageType equals: nil.
]
