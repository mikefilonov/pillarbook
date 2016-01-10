as yet unclassified
startPublish
	|process result client |
	client := EphemericCloudClient new userID: self userID; authToken: self authToken.

	process := [ (Delay forSeconds: 10) wait. result := PBPillarBookApplication publishToEphemeric: client named: self alias] fork.
	
	self call: (PBPublishProgress new process: process; doAutoUpdate; yourself).
	self inform: result.
	self answer.