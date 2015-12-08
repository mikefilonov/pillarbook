accessing
baseline: spec
   <baseline>
	spec for: #'common' do: [
		spec
			project: 'Seaside3' with: [
				spec
					className: #ConfigurationOfSeaside3;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main/';
					loads: #(default) ];
				
			project: 'Bootstrap' with: [
				spec
					className: #ConfigurationOfBootstrap;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'Pillar' with: [
				spec
					className: #ConfigurationOfPillar;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ];
			project: 'WebAnnouncement' with: [
				spec
					className: #ConfigurationOfWebAnnouncement;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/mikefilonov/WebAnnouncement/main/' ].
				
		
		spec package: #'PillarBook'. ].
