Class {
	#name : #Page,
	#superclass : #Object,
	#instVars : [
		'currentIndex',
		'endType',
		'nodes',
		'next'
	],
	#category : #GladStoriesEngine
}

{ #category : #adding }
Page >> addNextPage: aPage withText: aText [
| nextPage |
nextPage := PageNext new.
nextPage text: aText.
nextPage nextPage: aPage.
next add: nextPage
]

{ #category : #adding }
Page >> addNodeWithText: aObject [
| n |
n := PageNode new text: aObject.
nodes add: n
]

{ #category : #adding }
Page >> addNodeWithText: aText andImageType: aImageType [
| n |

n := PageNode withText: aText.
n imageType: aImageType.

self nodes add: n
]

{ #category : #testing }
Page >> canContinue [
^ nodes size > currentIndex
]

{ #category : #accessing }
Page >> currentIndex [ 
^ currentIndex
]

{ #category : #accessing }
Page >> currentIndex: anObject [
	currentIndex := anObject
]

{ #category : #accessing }
Page >> currentNode [
^ nodes at: currentIndex
]

{ #category : #'accessing-dynamic' }
Page >> currentText [

^ (nodes at: currentIndex) text
]

{ #category : #processing }
Page >> doContinue [
currentIndex := currentIndex + 1
]

{ #category : #accessing }
Page >> endType [
	^ endType
]

{ #category : #accessing }
Page >> endType: anObject [
	endType := anObject
]

{ #category : #initialization }
Page >> initialize [ 
nodes := OrderedCollection new.
next := OrderedCollection new.
currentIndex := 1
]

{ #category : #accessing }
Page >> next [
	^ next
]

{ #category : #accessing }
Page >> next: anObject [
	next := anObject
]

{ #category : #processing }
Page >> nextOptionsText [

^ next collect: [ :n | n text ].
]

{ #category : #accessing }
Page >> nodes [
	^ nodes
]

{ #category : #accessing }
Page >> nodes: anObject [
	nodes := anObject
]
