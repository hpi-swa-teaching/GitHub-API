test cards
testCards
	
	| failed |
	
	failed := false. 
	[self gitHubColumn cards]
		on: Error do: [failed := true].
		
	self deny: failed
	