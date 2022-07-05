helper
getAssetIdByName: anAssetName

	| assets asset |
	
	assets := GitHubReleaseAssets new.
	assets
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame;
		releaseId: self getReleaseId.
	
	assets := assets list.
	
	asset := assets detect: [:p | (p at: 'name') = anAssetName] ifNone: [].
	asset ifNil: [self error: 'Unknown asset  ' , anAssetName , '!'] ifNotNil: [^ (asset at: 'id')]