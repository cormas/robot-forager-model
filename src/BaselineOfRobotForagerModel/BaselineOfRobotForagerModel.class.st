Class {
	#name : 'BaselineOfRobotForagerModel',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfRobotForagerModel',
	#package : 'BaselineOfRobotForagerModel'
}

{ #category : 'baselines' }
BaselineOfRobotForagerModel >> baseline: spec [

	<baseline>
	spec for: #common do: [

		"Packages"
		spec
			package: 'RobotForager-Model' ]
]
