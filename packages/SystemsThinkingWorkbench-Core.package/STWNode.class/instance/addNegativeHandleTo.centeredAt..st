halos and balloon help
addNegativeHandleTo: myHalo centeredAt: aPoint

	myHalo addMorph: ((myHalo
		createHandleFor: #toggleNegativePermission
		to: self
		color: (self isNegativePermitted ifFalse: [Color green] ifTrue: [Color red])
		containing: MenuIcons squeakIcon asMorph)
			on: #mouseUp send: #delete to: myHalo;
			balloonText: 'Toggle negativity';
			center: aPoint).