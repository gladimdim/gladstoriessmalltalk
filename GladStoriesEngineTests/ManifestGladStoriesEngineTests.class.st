"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestGladStoriesEngineTests,
	#superclass : #PackageManifest,
	#category : #'GladStoriesEngineTests-Manifest'
}

{ #category : #'code-critics' }
ManifestGladStoriesEngineTests class >> ruleRBMissingTranslationsInMenusRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#StoryTest #setUp #false)) #'2019-12-25T21:26:34.125843+02:00') )
]
