accessing
baseline: spec
   <baseline>
	spec for: #'common' do: [
		spec
			project: 'WebAnnouncement' with: [
				spec
					className: #ConfigurationOfWebAnnouncement;
					versionString: #development;
					repository: 'http://smalltalkhub.com/mc/mikefilonov/WebAnnouncement/main/' ];
			project: 'RESTAnnouncer' with: [
				spec
					className: #BaselineOfEphemericCloudAPI;
					repository: 'github://mikefilonov/PharoEphemericCloudApi:master' ].
				
		
		spec 
			package: 'PillarBook';
			package: 'PillarBook-Model';
			package: 'PillarBook-Seaside'.
		 ].
