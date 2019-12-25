Class {
	#name : #StoryTest,
	#superclass : #TestCase,
	#instVars : [
		'n',
		'p',
		'c'
	],
	#category : #GladStoriesEngineTests
}

{ #category : #running }
StoryTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	n := PageNode new text: 'The very first node'; imageType: 'steppe'.
	p := Page new nodes: #(n).
	c := Story new title: 'Title'; description: 'Description'; root: p
]

{ #category : #tests }
StoryTest >> testCanContinue [
self assert: c canContinue equals: true.
]

{ #category : #tests }
StoryTest >> testTripleSetting [
|c|

c := Story new.
c title: 'A' description: 'b' authors: 'c'.

self assert: c title equals: 'A'.
]
