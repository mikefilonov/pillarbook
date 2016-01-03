as yet unclassified
referenceOfExternalLink: anExternalLink
	| localFileIndicator reference |
	localFileIndicator := 'file://figures/'.
	reference := anExternalLink reference.
	^ (reference beginsWith: localFileIndicator)
			ifTrue: [ self referenceForFile: (reference allButFirst: localFileIndicator size) ]
			ifFalse: [ reference ]