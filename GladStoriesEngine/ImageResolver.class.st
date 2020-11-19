Class {
	#name : #ImageResolver,
	#superclass : #Object,
	#category : #GladStoriesEngine
}

{ #category : #'as yet unclassified' }
ImageResolver >> stringToUrl: aString [ 
| r res |
r := (Random new next * 10) asInteger.
res := 'https://locadeserta.com/game/assets/images/background/', aString, '/', r asString, '.jpg'.
^ res
]
