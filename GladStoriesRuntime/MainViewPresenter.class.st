Class {
	#name : #MainViewPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'buttonContinue',
		'screen',
		'story',
		'buttonChoices',
		'image'
	],
	#category : #GladStoriesRuntime
}

{ #category : #specs }
MainViewPresenter class >> defaultSpec [ 
^ #mainLayout
]

{ #category : #initialization }
MainViewPresenter >> connectPresenters [ 

buttonContinue action: [ story currentPage doContinue. self updateAfterChoice ]
]

{ #category : #initialization }
MainViewPresenter >> initializePresenters [ 
screen := self newText.
buttonContinue := self newButton.
image := self newImage.
image autoScale: true.
image image: (ZnEasy getJpeg: 'https://locadeserta.com/game/assets/images/background/cossack_0.jpg').
layout := SpBoxLayout newVertical.
layout add: screen; add: buttonContinue.
screen text: 'Start of the story'.
buttonChoices := SpBoxLayout newVertical.  
buttonContinue label: 'Continue'; icon: (self iconNamed: #forward).

]

{ #category : #initialization }
MainViewPresenter >> initializeWindow: aWindowPresenter [
aWindowPresenter title: story title;
initialExtent: 500@400.
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

{ #category : #accessing }
MainViewPresenter >> updateAfterChoice [
	screen text: story currentPage currentText.
	layout removeAll.
	layout add: screen.
	story currentPage currentNode imageType ifNotNil: [image image: (ZnEasy getJpeg: (ImageResolver new stringToUrl: (story currentPage currentNode imageType))). layout add: image].
	story currentPage canContinue
		ifTrue: [
			layout add: buttonContinue ]
		ifFalse: [
			story currentPage nextOptionsText
				do: [ :next | 
					layout
						add:
							(self newButton
								label: next;
								action: [ story goToNextPage: next.
									self updateAfterChoice ]) ] ]
]
