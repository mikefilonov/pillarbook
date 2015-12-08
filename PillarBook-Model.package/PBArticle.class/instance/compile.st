as yet unclassified
compile
	|document|
	document := PRDocumentParser parse: self pillarBody.
	
	htmlBody :=  [ PRHTMLWriter new write: document ] on: PRWarning do: [ :e | Transcript show: e messageText ].
	title :=  (document children detect: [ :c | c isKindOf: PRHeader ] ifNone: PRHeader new) text ifEmpty: 'No Title'.
	
	