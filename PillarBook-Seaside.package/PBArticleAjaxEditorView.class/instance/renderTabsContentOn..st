as yet unclassified
renderTabsContentOn: html
	html tbsNav beTabs; with: [
		html listItem role: 'presentation'; class: 'active'; with: [ html anchor role: 'tab'; attributeAt: 'data-toggle' put: 'tab' ; url: '#previewPanel'; with: 'View'].
		html listItem role: 'presentation';  with: [ html anchor role: 'tab'; attributeAt: 'data-toggle' put: 'tab';  url: '#editor'; with: 'Edit'].
		
		 ].
	html tbsTabContent with: [ 
		html tbsTabPane id: 'editor'; with: [ 
			self renderEditorOn: html ].
		
		html tbsTabPane beActive; id: 'previewPanel'; with: [
				html html: self article resolvedHtml  ] ].
	
	
	
	
	