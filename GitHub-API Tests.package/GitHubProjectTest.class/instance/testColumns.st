test columns
testColumns
	
	| failed |
	
	failed := false.
	[self gitHubProject columns]
		on: Error do: [failed := true].
	self deny: failed