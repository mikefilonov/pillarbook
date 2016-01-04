as yet unclassified
renderButtonsOn: html

	html anchor class: 'btn'; class: 'btn-default'; callback: [ PBArticle root addChild: PBArticle new ]; with: '+ Add new'.
	html anchor class: 'btn'; class: 'btn-default'; callback: [ PBArticle root children remove: self article ]; with: '- Remove'.
	html anchor class: 'btn'; class: 'btn-default'; callback: [ PBArticle root importChildren ]; with: 'Load from disk'.
	html anchor class: 'btn'; class: 'btn-default'; callback: [ PBArticle root exportChildren ]; with: 'Save to disk'.
	html anchor class: 'btn'; class: 'btn-default'; callback: [ PBPillarBookApplication publish ]; with: 'Publish to Ephemeric'.
	