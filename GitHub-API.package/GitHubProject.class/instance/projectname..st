accessing
projectname: anObject

	"as soon as the projectname changes, the id needs to be recalculated"
	self projectId: nil.
	
	projectname := anObject.