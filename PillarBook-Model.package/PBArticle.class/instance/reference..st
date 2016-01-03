accessing
reference: anObject
	reference := anObject ifNotNil: [ anObject ifEmpty: [ nil ] ]