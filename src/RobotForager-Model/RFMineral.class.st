Class {
	#name : 'RFMineral',
	#superclass : 'CMAgent',
	#traits : 'TCMLocated',
	#classTraits : 'TCMLocated classTrait',
	#category : 'RobotForager-Model',
	#package : 'RobotForager-Model'
}

{ #category : 'accessing' }
RFMineral >> pov [

	<pov>
	^ RFColor gold
]

{ #category : 'as yet unclassified' }
RFMineral >> shapeOfPOV [

	^ #diamond
]

{ #category : 'as yet unclassified' }
RFMineral >> sizeOfPOV [

	^ 7
]
