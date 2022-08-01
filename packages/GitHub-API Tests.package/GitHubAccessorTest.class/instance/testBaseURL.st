as yet unclassified
testBaseURL

	(gitHubObject isNil) ifTrue: [^true].

	self test: gitHubObject withAccessor: #baseURL andValue: self defaultBaseURL.