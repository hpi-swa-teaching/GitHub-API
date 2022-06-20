parameters
moveParameters

	^ Dictionary newFrom: {
		'position' -> (Dictionary newFrom: {
			'type' -> String.
			'required' -> true.		
			'matches' -> {'first' . 'last'}
		})
	}

	