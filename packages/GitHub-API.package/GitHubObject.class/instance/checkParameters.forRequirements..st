helper
checkParameters: aParameterDictionary forRequirements: aRequirementsDictionary

	| parameterChecker |
	
	parameterChecker := GitHubParameterChecker new.
	parameterChecker
		parameters: aParameterDictionary;
		requirements: aRequirementsDictionary.
	
	^ parameterChecker check