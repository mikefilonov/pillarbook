as yet unclassified
renderTabsContentOn: html
	html tbsNav beTabs; with: [
		html listItem role: 'presentation'; class: 'active'; with: [ html anchor role: 'tab'; attributeAt: 'data-toggle' put: 'tab';  url: '#editor'; with: 'Editor'].
		html listItem role: 'presentation'; with: [ html anchor role: 'tab'; attributeAt: 'data-toggle' put: 'tab' ;url: '#previewPanel'; with: 'Preview']
		
		 ].
	html tbsTabContent with: [ 
		html tbsTabPane beActive; id: 'editor'; with: [ 
			self renderEditorOn: html ].
		
		html tbsTabPane id: 'previewPanel'; with: [
				html html: self article htmlBody ] ].
	
	
	
	
	