methods
assets: anAssetIdentifier

	"returns a specific asset identified by id or name"

	| asset |
	
	asset := GitHubReleaseAsset new.
	asset
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame.
	
	(anAssetIdentifier isKindOf: Number)
		ifTrue: [asset assetId: anAssetIdentifier].
	(anAssetIdentifier isKindOf: String)
		ifTrue: [asset assetId: (self getAssetIdByName: anAssetIdentifier)].
		
	^ asset
		