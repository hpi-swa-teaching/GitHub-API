accessing
headers

	^ headers ifNil: [headers := self defaultHeaders]