parameters
moveParameters

	^ Dictionary newFrom: {
		'position' -> (Dictionary newFrom: {
			'type' -> String.
			'required' -> true.		
			'matches' -> {'top' . 'bottom'}
		}).
		'column_id' -> (Dictionary newFrom: {
			'type' -> Integer.
		})
	}

	