helper
buildResultFragment: aResultCollection forResponse: aResponse
	
	"building fragments for paged requests"
	
	| isEmpty |
	
	"we received all elements, once the api answers with an empty result -> need to keep track"
	isEmpty := false.

	((aResponse isKindOf: Dictionary) and: [aResponse includesKey: 'items'])
			ifTrue: [
				"search request responds with a dictionary where all items are stored in array items"
				(aResponse at: 'items') size = 0 ifTrue: [isEmpty := true].
				(aResponse at: 'items') do: [:resultFragment | 
					aResultCollection add: resultFragment]]
			ifFalse: [
				"list request responds an array"
				aResponse size = 0 ifTrue: [isEmpty := true].
				aResponse do: [:resultFragment | 
					aResultCollection add: resultFragment]].
			
	^ {aResultCollection . isEmpty}