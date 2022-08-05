accessing
content

	^ content ifNil: [content := self defaultContent]