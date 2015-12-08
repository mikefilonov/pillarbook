accessing
baseline: spec
   <baseline>
	spec for: #'common' do: [
		spec
			project: 'Seaside3' with: [
				spec
					className: #ConfigurationOfSeaside3;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main/';
					loads: #(default) ];
				
			project: 'Bootstrap' with: [
				spec
					className: #ConfigurationOfBootstrap;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main/' ];
			project: 'Pillar' with: [
				spec
					className: #ConfigurationOfPillar;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main/' ].
				
		
		spec package: #'PillarBook'. ].
