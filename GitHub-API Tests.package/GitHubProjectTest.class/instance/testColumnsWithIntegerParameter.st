test columns
testColumnsWithIntegerParameter
	
	self assert: (self gitHubProject columns: 1234) columnId = 1234