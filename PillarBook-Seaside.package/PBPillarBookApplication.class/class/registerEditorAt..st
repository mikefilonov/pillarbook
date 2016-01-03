as yet unclassified
registerEditorAt: mountpoint
	"self register"
	| app |
	app :=WAAdmin register: self asApplicationAt: mountpoint.
	app 
 	   addLibrary: JQ2DeploymentLibrary;
	   addLibrary: TBSDeploymentLibrary.