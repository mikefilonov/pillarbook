components
headerView
	^headerView ifNil: [ headerView := PBHeaderView new onSearch: [: aQuery | self search: aQuery ] ]