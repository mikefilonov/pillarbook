as yet unclassified
startPublish
	|process result client |
	client := EphemericCloudClient userID: self userID authToken: self authToken.

	process := [ (Delay forSeconds: 2) wait. "publish will destroy all connections, wait to allow progress bar to be rendered"
		result := PBPillarBookApplication publishToEphemeric: client named: self imageName alias: self alias
		
		] fork.
	
	self call: (PBPublishProgress new process: process; doAutoUpdate; yourself).
	self inform: result.
	self answer.