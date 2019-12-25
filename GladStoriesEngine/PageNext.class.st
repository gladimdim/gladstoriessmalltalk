Class {
	#name : #PageNext,
	#superclass : #Object,
	#instVars : [
		'text',
		'nextPage'
	],
	#category : #GladStoriesEngine
}

{ #category : #accessing }
PageNext >> nextPage [
	^ nextPage
]

{ #category : #accessing }
PageNext >> nextPage: anObject [
	nextPage := anObject
]

{ #category : #accessing }
PageNext >> text [
	^ text
]

{ #category : #accessing }
PageNext >> text: anObject [
	text := anObject
]
