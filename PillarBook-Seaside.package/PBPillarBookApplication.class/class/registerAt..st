as yet unclassified
registerAt: mountpoint
	"self register"
	| app |
	app := WAAdmin register: self asApplicationAt: mountpoint.
	app 
 	   addLibrary: JQ2DeploymentLibrary;
	   addLibrary: TBSDeploymentLibrary.
	WAAdmin register: PBFiguresFileLibrary at: 'figures'.
	^app