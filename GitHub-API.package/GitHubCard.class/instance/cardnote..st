accessing
cardnote: anObject

	"as soon as the card note changes, the id changes as well"
	self cardId: nil.
	cardnote := anObject.