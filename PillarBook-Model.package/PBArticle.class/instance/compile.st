pillar
compile
	|document|
	document := PRDocumentParser parse: self pillarBody.
	
	self htmlBody: ([ PRHTMLWriter new write: document ] on: PRWarning do: [ :e | Transcript show: e messageText ]).
	self title:  document title. 
	self reference: (document propertyAt: 'reference' ifAbsent: [ (document children isNotEmpty and: [document children first isKindOf: PRAnchor]) ifTrue:[document children first name] ifFalse:[self reference] ]).
	self updateTime: DateAndTime now.
