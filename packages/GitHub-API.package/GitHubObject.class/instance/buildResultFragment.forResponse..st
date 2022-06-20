helper
buildResultFragment: aResultCollection forResponse: aResponseDictionary

	| isEmpty |

	isEmpty := false.

	((aResponseDictionary isKindOf: Dictionary) and: [aResponseDictionary includesKey: 'items'])
			ifTrue: [
				"search request"
				(aResponseDictionary at: 'items') size = 0 ifTrue: [isEmpty := true].
				(aResponseDictionary at: 'items') do: [:resultFragment | 
					aResultCollection add: resultFragment]]
			ifFalse: [
				"list request"
				aResponseDictionary size = 0 ifTrue: [isEmpty := true].
				aResponseDictionary do: [:resultFragment | 
					aResultCollection add: resultFragment]].
			
	^ OrderedCollection newFrom: #(aResultCollection isEmpty)