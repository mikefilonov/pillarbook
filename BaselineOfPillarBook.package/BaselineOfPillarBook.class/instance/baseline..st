accessing
baseline: spec
   <baseline>
	spec for: #'common' do: [
		spec

			project: 'WebAnnouncement' with: [
				spec
					className: #ConfigurationOfWebAnnouncement;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/mikefilonov/WebAnnouncement/main/' ];	
			project: 'Pillar' with: [
				spec
					className: #ConfigurationOfPillar;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main/' ].
				
		
		spec package: #'PillarBook'. ].
