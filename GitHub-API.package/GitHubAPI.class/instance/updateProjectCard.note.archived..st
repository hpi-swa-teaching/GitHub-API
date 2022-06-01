requestsAPI
updateProjectCard: aCardID note: aString archived: aBoolean

	| body |
	body := JsonObject new.
	body at: 'note' put: aString.
	body at: 'archived' put: aBoolean.
	
	^ self performPatchRequest: 'https://api.github.com/projects/columns/cards/' , aCardID withJsonData: body
	
	