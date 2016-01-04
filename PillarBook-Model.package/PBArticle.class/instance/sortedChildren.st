container
sortedChildren
	^ self children sort: [ :a :b |  a reference < b reference ]