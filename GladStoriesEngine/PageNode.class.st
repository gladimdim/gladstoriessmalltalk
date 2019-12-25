Class {
	#name : #PageNode,
	#superclass : #Object,
	#instVars : [
		'text',
		'imageType'
	],
	#category : #GladStoriesEngine
}

{ #category : #initialization }
PageNode class >> withText: aString [
"Initializes the Node object with aString as text"
^ self new text: aString.
]

{ #category : #accessing }
PageNode >> imageType [
	^ imageType
]

{ #category : #accessing }
PageNode >> imageType: anObject [
	imageType := anObject
]

{ #category : #accessing }
PageNode >> text [
	^ text
]

{ #category : #accessing }
PageNode >> text: anObject [
	text := anObject
]
