Class {
	#name : 'RFCell',
	#superclass : 'CMCell',
	#category : 'RobotForager-Model',
	#package : 'RobotForager-Model'
}

{ #category : 'aspects' }
RFCell >> aspectDefault: look [

	<aspect>
	look
		image: 'floor';
		borderThickness: 0.02;
		borderColor: CMColor brown
]

{ #category : 'aspects' }
RFCell >> aspectSimple: look [

	<aspect>
	look color: Color gray lighter
]

{ #category : 'accessing' }
RFCell >> getMinerals [

	^ self occupantsOfClass: RFMineral
]

{ #category : 'testing' }
RFCell >> hasMineral [

	^ self getMinerals isNotEmpty 
]
