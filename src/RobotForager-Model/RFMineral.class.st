Class {
	#name : 'RFMineral',
	#superclass : 'CMAgent',
	#category : 'RobotForager-Model',
	#package : 'RobotForager-Model'
}

{ #category : 'pov' }
RFMineral >> pov [

	<pov>
		
	^ CMPointOfView
		tile: RFTileset mineral
		size: 0.6
]

{ #category : 'pov' }
RFMineral >> povSimple [

	<pov>
	^ CMPointOfView new
		color: CMColor gold;
		shape: #diamond;
		size: 0.4;
		yourself
]
