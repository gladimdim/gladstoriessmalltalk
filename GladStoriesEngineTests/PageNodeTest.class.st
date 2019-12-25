Class {
	#name : #PageNodeTest,
	#superclass : #TestCase,
	#category : #GladStoriesEngineTests
}

{ #category : #tests }
PageNodeTest >> testInitWithText [
|c|

c := PageNode withText: 'Dima'.
self assert: c text equals: 'Dima'.
self assert: c imageType equals: nil.
]
