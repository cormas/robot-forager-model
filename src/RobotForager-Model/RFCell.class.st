Class {
	#name : 'RFCell',
	#superclass : 'CMCell',
	#category : 'RobotForager-Model',
	#package : 'RobotForager-Model'
}

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
	
	^ CMPointOfView new
		tile: RFTileset floor;
		borderWidth: 0.02;
		borderColor: CMColor brown ;
		yourself
]

{ #category : 'accessing' }
RFCell >> povSimple [

	<pov>
	^ CMPointOfView new
		color: Color gray lighter
		yourself
]
