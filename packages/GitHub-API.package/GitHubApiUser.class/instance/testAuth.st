helpers
testAuth

	| api user |
	
	api := GitHubApi new apiUser: self.
	
	[
		user := api user get.
		(((user at: 'login') asLowercase) = (self username asLowercase))
			ifFalse: [self error: 'Wrong username!']]
	on: Error do: [
		self reset.
		self error: 'Wrong credentials!']

	