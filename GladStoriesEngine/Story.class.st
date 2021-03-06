Class {
	#name : #Story,
	#superclass : #Object,
	#instVars : [
		'title',
		'description',
		'authors',
		'root',
		'year',
		'currentPage',
		'history'
	],
	#category : #GladStoriesEngine
}

{ #category : #'instance creation' }
Story class >> fromJsonString: aObject [
"Initializes Story from JSON String"
| map |

map := NeoJSONReader fromString: aObject.

^ self new
	title: (map at: 'title')
	description: (map at: 'description')
	authors: (map at: 'authors');
	root: (Page fromMap: (map at: 'root'))

]

{ #category : #accessing }
Story >> authors [ 
^ authors
]

{ #category : #accessing }
Story >> authors: anObject [
	authors := anObject
]

{ #category : #accessing }
Story >> currentPage [
	^ currentPage
]

{ #category : #accessing }
Story >> currentPage: anObject [
	currentPage := anObject
]

{ #category : #accessing }
Story >> description [
^ description
]

{ #category : #accessing }
Story >> description: anObject [
	description := anObject
]

{ #category : #'as yet unclassified' }
Story >> goToNextPage: aOptionText [
| nextPage  |

nextPage := (currentPage next select: [ :np | np text = aOptionText ]).

currentPage := (nextPage at: 1) nextPage
]

{ #category : #testing }
Story >> hasTitle [ 
^ (self title) notNil .
]

{ #category : #accessing }
Story >> history [
	^ history
]

{ #category : #accessing }
Story >> history: anObject [
	history := anObject
]

{ #category : #accessing }
Story >> root [
	^ root
]

{ #category : #accessing }
Story >> root: anObject [
	root := anObject.
	currentPage := anObject
]

{ #category : #accessing }
Story >> title [
^ title
]

{ #category : #accessing }
Story >> title: anObject [
	title := anObject
]

{ #category : #initialization }
Story >> title: t description: d authors: a [
title := t.
description := d.
authors := a.
^ self
]

{ #category : #accessing }
Story >> year [
	^ year
]

{ #category : #accessing }
Story >> year: anObject [
	year := anObject
]
