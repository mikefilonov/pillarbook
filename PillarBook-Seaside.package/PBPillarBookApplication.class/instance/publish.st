callbacks
publish
	"|id auth imageName client|"
	
	self layout mainComponent call: PBPublishForm new.
	"
	id := self request: 'Ephemeric Cloud User ID:' label: 'next'.
	auth := self request: 'Ephemeric Cloud User Auth Tpken' label: 'next'.
	imageName := self request: 'Publish Image name' label: 'publish'.
	
	client := EphemericCloudClient new userID: id; authToken: auth.
	PBPillarBookApplication publishToEphemeric: client named: imageName"
	
	
	
	