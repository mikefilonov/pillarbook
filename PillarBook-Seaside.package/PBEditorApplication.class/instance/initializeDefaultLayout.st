layout
initializeDefaultLayout
	self layout navComponent: self navigationView.
	self layout mainComponent: self articleView.
	self layout headerComponent: self headerView.