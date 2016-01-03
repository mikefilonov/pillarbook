container
nextPrecedence
	^self children ifEmpty: [ 1 ] ifNotEmpty: [ (self children collect: [ :a | a precedence ifNil: [ 0 ] ]) max + 1].
