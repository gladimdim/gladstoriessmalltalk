"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	imageType:		<Object>
	text:		<Object>


    Implementation Points
"
Class {
	#name : #PageNode,
	#superclass : #Object,
	#instVars : [
		'text',
		'imageType'
	],
	#category : #GladStoriesEngine
}

{ #category : #'instance creation' }
PageNode class >> fromMap: aMap [
^ self new text: (aMap at: 'text'); imageType: (aMap at: 'imageType' ifAbsent: [nil])
]

{ #category : #initialization }
PageNode class >> withText: aString [
"Initializes the Node object with aString as text"
^ self new text: aString.
]

{ #category : #accessing }
PageNode >> gtPreviewFor: aView [
<gtView>
^ aView textEditor
  text: [self text];
  title: 'Page Node'
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
PageNode >> printOn: aStream [
super printOn: aStream.
aStream nextPutAll: ' with a text: ', text
]

{ #category : #accessing }
PageNode >> text [
	^ text
]

{ #category : #accessing }
PageNode >> text: anObject [
	text := anObject
]
