container
sortedChildren
	^ self children sort: [ :a :b | a precedence isNotNil and: [ b precedence isNotNil and: [ a precedence < b precedence ] ]  ]