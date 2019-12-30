Class {
	#name : #MainViewPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'buttonContinue',
		'screen',
		'story',
		'buttonChoices'
	],
	#category : #GladStoriesRuntime
}

{ #category : #specs }
MainViewPresenter class >> defaultSpec [ 
^ #mainLayout
]

{ #category : #initialization }
MainViewPresenter >> connectPresenters [ 
| action choiceAction |
choiceAction := [ :s :a :next |
	s goToNextPage: next
	].
action:= [ story currentPage doContinue.
	story currentPage canContinue
	ifTrue: [ screen text: story currentPage currentText  ]
	ifFalse: [
		layout remove: buttonContinue.
		story currentPage nextOptionsText do: [
			:next | layout add: (self newButton label: next; action: [ story goToNextPage: next. Transcript show: story currentPage currentText  ] )
			].
		]
	].

buttonContinue action: action
]

{ #category : #initialization }
MainViewPresenter >> initializePresenters [ 
screen := self newText.
buttonContinue := self newButton.
layout := SpBoxLayout newVertical.
layout add: screen; add: buttonContinue.
screen text: 'Start of the story'.
buttonChoices := SpBoxLayout newVertical.  
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
