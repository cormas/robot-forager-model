Class {
	#name : 'RFCell',
	#superclass : 'CMSpatialEntityElement',
	#classInstVars : [
		'mineralGenerationRate'
	],
	#category : 'RobotForager-Model',
	#package : 'RobotForager-Model'
}

{ #category : 'initialization' }
RFCell class >> initializeParameters [

	super initializeParameters.
	mineralGenerationRate := 0.1
]

{ #category : 'accessing' }
RFCell class >> mineralGenerationRate [

	^ mineralGenerationRate
]

{ #category : 'accessing' }
RFCell class >> mineralGenerationRate: aNumber [

	mineralGenerationRate := aNumber
]

{ #category : 'accessing' }
RFCell >> getMinerals [

	^ self occupantsOfClass: RFMineral
]

{ #category : 'testing' }
RFCell >> hasMineral [

	^ self getMinerals isNotEmpty 
]

{ #category : 'accessing' }
RFCell >> pov [

	<pov>
	^ Color gray lighter
]
