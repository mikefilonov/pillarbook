as yet unclassified
validate
	^ (self authToken isEmpty or: [ self userID isEmpty or:[ self imageName isEmpty]]) not
