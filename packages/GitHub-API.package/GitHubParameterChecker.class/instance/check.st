checks
check

	self checkRequiredParameters.
	self parameters keysDo: [:parameter | self checkParameter: parameter].
	
	^ true