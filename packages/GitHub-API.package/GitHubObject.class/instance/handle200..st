defaults
handle200: aWebResponse

	| lastModified json |
	
	lastModified := aWebResponse headerAt: 'last-modified' ifAbsent: nil.
	json := STONJSON fromStream: aWebResponse content readStream. 
	
	"last modified should only be available for concrete objects"
	json isArray ifFalse: [
		lastModified ifNotNil: [json at: 'last_modified' put: lastModified]].
		
	^ json