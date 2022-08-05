accessing
code

	^ code ifNil: [code := self defaultCode]