Class {
	#name : 'RFRobot',
	#superclass : 'CMAgent',
	#traits : 'TCMLocated',
	#classTraits : 'TCMLocated classTrait',
	#instVars : [
		'minerals',
		'allRobots'
	],
	#category : 'RobotForager-Model',
	#package : 'RobotForager-Model'
}

{ #category : 'accessing' }
RFRobot >> allRobots: aCollection [

	allRobots := aCollection
]

{ #category : 'as yet unclassified' }
RFRobot >> collectMineral [

	minerals addAll:
		((self patch getMinerals) do: [ :mineral |
			 mineral leave.
			 mineral ])
]

{ #category : 'testing' }
RFRobot >> hasNeighbourWithMineral [

	^ self patch neighbourhood anySatisfy: [ :cell | cell hasMineral ]
]

{ #category : 'initialization' }
RFRobot >> initialize [

	super initialize.
	minerals := OrderedCollection new.
	allRobots := OrderedCollection new
]

{ #category : 'accessing' }
RFRobot >> minerals [

	^ minerals
]

{ #category : 'as yet unclassified' }
RFRobot >> move [

	self patch neighbourhood
		detect: [ :cell | cell hasMineral ]
		ifFound: [ :cell | self moveTo: cell ]
		ifNone: [ self randomWalk ]
]

{ #category : 'as yet unclassified' }
RFRobot >> moveCollaboratively [

	self patch neighbourhood
		detect: [ :cell | cell hasMineral ]
		ifFound: [ :cell | self moveTo: cell ]
		ifNone: [ 
			allRobots
				detect: [ :robot | robot hasNeighbourWithMineral ]
				ifFound: [ :robot | self moveTowards: robot neighbourWithMineral ]
				ifNone: [ self randomWalk ] ]
]

{ #category : 'testing' }
RFRobot >> neighbourWithMineral [

	^ self patch neighbourhood detect: [ :cell | cell hasMineral ]
]

{ #category : 'accessing' }
RFRobot >> pov [

	<pov>
	^ CMPointOfView
		color: RFColor blue
		shape: #star
		size: 15
]

{ #category : 'control' }
RFRobot >> step [

	self move.
	self collectMineral.
]

{ #category : 'control' }
RFRobot >> stepCollaboratively [

	self moveCollaboratively.
	self collectMineral.
]
