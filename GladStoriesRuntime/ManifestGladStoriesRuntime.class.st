"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestGladStoriesRuntime,
	#superclass : #PackageManifest,
	#category : #'GladStoriesRuntime-Manifest'
}

{ #category : #'code-critics' }
ManifestGladStoriesRuntime class >> ruleRBCollectionProtocolRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#MainViewPresenter #updateAfterChoice #false)) #'2019-12-31T15:39:42.402076+02:00') )
]
