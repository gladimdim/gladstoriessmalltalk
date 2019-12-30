Class {
	#name : #MainViewPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'buttonContinue',
		'screen',
		'story'
	],
	#category : #GladStoriesRuntime
}

{ #category : #specs }
MainViewPresenter class >> defaultSpec [ 
^ SpBoxLayout newVertical 
add: #screen;
add: (
	SpBoxLayout newHorizontal
		add: #buttonContinue; yourself);
	yourself
]

{ #category : #initialization }
MainViewPresenter >> connectPresenters [ 
buttonContinue action: [ story currentPage doContinue.
	screen text: story currentPage currentText ].
]

{ #category : #initialization }
MainViewPresenter >> initializePresenters [ 
screen := self newText.
buttonContinue := self newButton.

screen text: 'Start of the story'.
buttonContinue label: 'Continue'; icon: (self iconNamed: #thumbsUp).

]

{ #category : #initialization }
MainViewPresenter >> initializeWindow: aWindowPresenter [
aWindowPresenter title: story title;
initialExtent: 800@600.
screen text: story currentPage currentText
]

{ #category : #accessing }
MainViewPresenter >> story [
	^ story
]

{ #category : #accessing }
MainViewPresenter >> story: anObject [
	story := anObject
]
