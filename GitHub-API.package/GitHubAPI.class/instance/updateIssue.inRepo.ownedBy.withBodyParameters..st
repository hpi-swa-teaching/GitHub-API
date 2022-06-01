requestsAPI
updateIssue: anIssueNumber inRepo: aRepoName ownedBy: aUsername withBodyParameters: aJsonObject

	^ self performPatchRequest: 'https://api.github.com/repos/' , aUsername , '/' , aRepoName , '/issues/' , anIssueNumber withJsonData: aJsonObject

	