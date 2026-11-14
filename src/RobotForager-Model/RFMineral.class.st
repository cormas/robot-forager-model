Class {
	#name : 'RFMineral',
	#superclass : 'CMAgent',
	#category : 'RobotForager-Model',
	#package : 'RobotForager-Model'
}

{ #category : 'aspects' }
RFMineral >> aspectDefault: look [

	<aspect>
	look
		tile: #mineral;
		size: 0.6
]

{ #category : 'aspects' }
RFMineral >> aspectSimple: look [

	<aspect>
	look
		color: CMColor gold;
		shape: #diamond;
		size: 0.4
]
