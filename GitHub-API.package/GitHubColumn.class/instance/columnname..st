accessing
columnname: anObject

	"as soon as the column name changes, the id changes as well"
	self columnId: nil.
	columnname := anObject.