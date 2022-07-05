accessing
releaseIdentifier: aReleaseIdentifier

	"release identifier changes -> path needs to be recalculated"
	self path: nil.
	releaseIdentifier := aReleaseIdentifier