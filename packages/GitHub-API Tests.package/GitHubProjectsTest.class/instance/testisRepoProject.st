test lazy init isRepoProject
testisRepoProject

	self assert: (self gitHubProjects isRepoProject) = true