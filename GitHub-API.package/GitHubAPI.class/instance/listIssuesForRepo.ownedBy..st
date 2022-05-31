requestsAPI
listIssuesForRepo: aRepoName ownedBy: aUsername

	^ self performPagedGetRequest: 'https://api.github.com/repos/' , aUsername , '/' , aRepoName , '/issues'