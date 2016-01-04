components
navigationView
	^navigationView ifNil: [ navigationView := self createNavigationView ]