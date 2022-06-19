baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'GItHub-API';
				package: 'GitHub-API Tests' with: [spec requires: #('default')];
				package: 'GitHub-API MockObjects';
				yourself.
			spec
				group: 'default' with: #('GItHub-API', 'GitHub-API MockObjects');
				group: 'tests' with: #('GitHub-API Tests')];
				yourself