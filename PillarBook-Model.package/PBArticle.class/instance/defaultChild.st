container
defaultChild
	^ self children detect: [ :a | a isDefault ] ifNone: [ self children ifEmpty: [ nil ] ifNotEmpty: [ self children first ] ]