Class {
	#name : #MainViewPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'buttonHappy',
		'buttonNeutral',
		'buttonBad',
		'screen'
	],
	#category : #GladStoriesRuntime
}

{ #category : #specs }
MainViewPresenter class >> defaultSpec [ 
^ SpBoxLayout newVertical 
add: #screen;
add: (
	SpBoxLayout newHorizontal
		add: #buttonHappy;
		add: #buttonNeutral;
		add: #buttonBad; yourself);
	yourself
]

{ #category : #initialization }
MainViewPresenter >> connectPresenters [ 
buttonHappy action: [ screen label: buttonHappy  label ].
buttonNeutral action: [ screen label: buttonNeutral label ].
buttonBad action: [ screen label: buttonBad label ].
]

{ #category : #initialization }
MainViewPresenter >> initializePresenters [ 
screen := self newLabel.
buttonHappy := self newButton.
buttonNeutral := self newButton.
buttonBad := self newButton.

screen label: 'Start of the story'.
buttonHappy label: 'Happy'; icon: (self iconNamed: #thumbsUp).

buttonNeutral label: 'Neutral'; icon: (self iconNamed: #user).

buttonBad label: 'Bad'; icon: (self iconNamed: #thumbsDown).

self focusOrder
add: buttonHappy; add: buttonNeutral; add: buttonBad
]

{ #category : #initialization }
MainViewPresenter >> initializeWindow: aWindowPresenter [
aWindowPresenter title: 'Loca Deserta';
initialExtent: 400@100
]
