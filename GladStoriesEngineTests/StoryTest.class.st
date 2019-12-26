Class {
	#name : #StoryTest,
	#superclass : #TestCase,
	#instVars : [
		'p',
		'c'
	],
	#category : #GladStoriesEngineTests
}

{ #category : #running }
StoryTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	p := Page new nodes: #(n).
	c := Story new title: 'Title'; description: 'Description'; root: p
]

{ #category : #tests }
StoryTest >> testTripleSetting [
|c|

c := Story new.
c title: 'A' description: 'b' authors: 'c'.

self assert: c title equals: 'A'.
]
