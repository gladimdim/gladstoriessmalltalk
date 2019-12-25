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

{ #category : #accessing }
Page >> currentIndex [ 
^ currentIndex
]

{ #category : #accessing }
Page >> currentIndex: anObject [
	currentIndex := anObject
]

{ #category : #'as yet unclassified' }
Page >> currentNode [
^ nodes at: currentIndex
]

{ #category : #accessing }
Page >> endType [
	^ endType
]

{ #category : #accessing }
Page >> endType: anObject [
	endType := anObject
]

{ #category : #testing }
Page >> hasNextNode [
^ nodes size > currentIndex
]

{ #category : #initialization }
Page >> initialize [ 
nodes := Array new.
next := Array new.
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

{ #category : #accessing }
Page >> nodes [
	^ nodes
]

{ #category : #accessing }
Page >> nodes: anObject [
	nodes := anObject
]
