as yet unclassified
testAssetId

	(gitHubObject isNil) ifTrue: [^true].

	self test: gitHubObject withAccessor: #assetId andValue: self defaultAssetId.