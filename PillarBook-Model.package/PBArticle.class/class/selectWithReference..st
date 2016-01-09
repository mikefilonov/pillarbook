accessing
selectWithReference: reference
	^(self root children detect: [:a | a reference = reference ] ifNone: [nil])