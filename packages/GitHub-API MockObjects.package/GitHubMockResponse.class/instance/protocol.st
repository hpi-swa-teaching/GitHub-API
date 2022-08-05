accessing
protocol

	^ protocol ifNil: [protocol := self defaultProtocol]