accessing
status

	^ status ifNil: [status := self defaultStatus]