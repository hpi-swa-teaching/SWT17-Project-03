testing
testDivideByZero
	"Checks if clicking the same node twice gets handled"

	| playfield node1 node2 |
	playfield := STWPlayfield new.

	node1 := playfield addNodeAt: 0@0.
	node2 := playfield addNodeAt: 100@100.
	
	node1 mouseDown: Set new. 
	
	self assert: [playfield firstClicked = node1].
	
	node1 mouseDown: Set new. 
	
	self assert: [playfield firstClicked = nil].