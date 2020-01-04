Class {
	#name : #ImageResolver,
	#superclass : #Object,
	#category : #GladStoriesEngine
}

{ #category : #'as yet unclassified' }
ImageResolver >> stringToUrl: aString [ 
| r res fs |
r := (Random new next * 10) asInteger.
fs := aString.
(aString = 'cossacks') ifTrue: [ fs := 'camp' ].
(aString = 'steppe') ifTrue: [ fs := 'river' ].

res := 'https://locadeserta.com/game/assets/images/background/', fs, '/', r asString, '.jpg'.
^ res
]
