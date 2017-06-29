pillar
compile
	|document|
"	[ 	"
	
	document := PRPillarParserMain parse: self pillarBody.
	
	[ self htmlBody: (PBHTMLWriter new write: document) ] on: PRWarning do: [ :e | Transcript show: e messageText ].
	self textIndex: (PRTextWriter new write: document).
	self title:  document title. 
	self reference: (document propertyAt: 'reference' ifAbsent: [ (document children isNotEmpty and: [document children first isKindOf: PRAnchor]) ifTrue:[document children first name] ifFalse:[self reference] ]).
	self isDefault: (document propertyAt: 'default' ifAbsent: [ false ]).
	self headerTitle: (document propertyAt: 'header' ifAbsent: [ nil ]).	
	
	self updateTime: DateAndTime now.
	"] on: Exception do: [ :e| e signal ]"
