Class {
	#name : #PageNext,
	#superclass : #Object,
	#instVars : [
		'text',
		'nextPage'
	],
	#category : #GladStoriesEngine
}

{ #category : #'instance creation' }
PageNext class >> fromMap: aMap [

^ self new text: (aMap at: 'text'); nextPage: (Page fromMap: (aMap at: 'nextPage'))
]

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
