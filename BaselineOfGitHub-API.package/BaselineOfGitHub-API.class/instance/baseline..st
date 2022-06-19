baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'GitHub-API';
				package: 'GitHub-API MockObjects';
				package: 'GitHub-API Tests' with: [spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('GitHub-API' 'GitHub-API MockObjects');
				group: 'tests' with: #('GitHub-API Tests')];
				yourself