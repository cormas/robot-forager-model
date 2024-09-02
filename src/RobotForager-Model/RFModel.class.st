Class {
	#name : 'RFModel',
	#superclass : 'CMAbstractModel',
	#instVars : [
		'theRobots',
		'theMinerals',
		'theCells'
	],
	#classInstVars : [
		'numberOfMinerals'
	],
	#category : 'RobotForager-Model',
	#package : 'RobotForager-Model'
}

{ #category : 'initialization' }
RFModel class >> initializeParameters [

	super initializeParameters.
	numberOfMinerals := 10
]

{ #category : 'accessing' }
RFModel class >> numberOfMinerals [

	^ numberOfMinerals
]

{ #category : 'accessing' }
RFModel class >> numberOfMinerals: aNumber [

	numberOfMinerals := aNumber
]

{ #category : 'as yet unclassified' }
RFModel >> initLarge [

	<init>
	self
		createGridNumberOfRows: 27
		numberOfColumns: 27
		neighbourhood: 8
		closed: true.
		
	self class numberOfMinerals: 400.
		
	self createN: 10 randomlyLocatedAloneEntities: RFRobot. 
	self createN: self class numberOfMinerals randomlyLocatedAloneEntities: RFMineral.
	
	theRobots do: [ :each | each allRobots: theRobots ]
]

{ #category : 'as yet unclassified' }
RFModel >> initSmall [

	<init>
	self
		createGridNumberOfRows: 5
		numberOfColumns: 5
		neighbourhood: 8
		closed: true.
		
	self class numberOfMinerals: 20.
		
	self createN: 2 randomlyLocatedAloneEntities: RFRobot. 
	self createN: self class numberOfMinerals randomlyLocatedAloneEntities: RFMineral.
	
	theRobots do: [ :each | each allRobots: theRobots ]
]

{ #category : 'initialization' }
RFModel >> initialize [
	
	super initialize.
	theCells := OrderedCollection new.
	theRobots := OrderedCollection new.
	theMinerals := OrderedCollection new
]

{ #category : 'as yet unclassified' }
RFModel >> numberOfAvailableMinerals [

	<probeNamed: 'Number of available minerals' color: 'E5B80B'>
	^ theCells count: [ :cell | cell hasMineral ]
]

{ #category : 'as yet unclassified' }
RFModel >> numberOfCollectedMinerals [

	<probeNamed: 'Number of collected minerals' color: '5579C6'>
	^ theRobots sum: [ :robot | robot minerals size ]
]

{ #category : 'stepping' }
RFModel >> step [
	
	<control>
	self askRandom: RFRobot toDo: #step
]

{ #category : 'stepping' }
RFModel >> stepCollaboratively [
	
	<control>
	self askRandom: RFRobot toDo: #stepCollaboratively 
]

{ #category : 'accessing - entities' }
RFModel >> theCells [

	<getterFor: #RFCell>
	^ theCells
]

{ #category : 'accessing - entities' }
RFModel >> theMinerals [

	<getterFor: #RFMineral>
	^ theMinerals
]

{ #category : 'accessing - entities' }
RFModel >> theRobots [

	<getterFor: #RFRobot>
	^ theRobots
]
