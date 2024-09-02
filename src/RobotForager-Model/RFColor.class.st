Class {
	#name : 'RFColor',
	#superclass : 'Object',
	#category : 'RobotForager-Model',
	#package : 'RobotForager-Model'
}

{ #category : 'constants' }
RFColor class >> blue [
	
	^ Color fromHexString:  '1034A6'"'5579C6'"
]

{ #category : 'constants' }
RFColor class >> gold [
	
	^ Color fromHexString: 'E5B80B'
]

{ #category : 'constants' }
RFColor class >> gray [

	^ Color gray lighter lighter
]

{ #category : 'constants' }
RFColor class >> green [

	^ Color fromHexString: 'E2EFE1'"'B2AC88'"
]
