accessing
username: aUsername

	"every time the username changes, the token needs to change as well!"
	self token: nil.

	username := aUsername