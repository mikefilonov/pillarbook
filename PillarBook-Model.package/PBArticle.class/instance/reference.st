accessing
reference
	^ reference ifNil: [ reference := UUID new asString36 ]