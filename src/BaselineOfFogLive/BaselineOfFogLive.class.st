Class {
	#name : #BaselineOfFogLive,
	#superclass : #BaselineOf,
	#category : 'BaselineOfFogLive'
}

{ #category : #baselines }
BaselineOfFogLive >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec baseline: 'TaskIt' with: [ spec repository: 'github://pharo-contributions/taskit:v1.2.0' ].
			spec baseline: 'Keccak' with: [ spec repository: 'github://smartanvil/Keccak:v0.1.1/src' ].
			spec baseline: 'FogComm' with: [ spec repository: 'github://x-EricH-x/Fog/src' ].
			spec baseline: 'SmaccSolidity' with: [ spec repository: 'github://smartanvil/SmaCC-Solidity' ].
			spec baseline: 'ParametrizedTests' with: [ spec repository: 'github://tesonep/ParametrizedTests' ].
			spec package: 'SolidityTestingResources' with: [ spec repository: 'github://smartanvil/SolidityTestingResources' ].
			spec package: 'FogEVM' with: [ spec repository: 'github://smartanvil/FogEVM' ].
			spec package: #Hexadecimal with: [ spec repository: 'github://sbragagnolo/Hexadecimal' ].
			spec
				project: 'NeoJSON'
				with: [ spec
						className: #ConfigurationOfNeoJSON;
						version: #stable;
						repository: 'http://mc.stfx.eu/Neo' ].
			spec package: #FogLive with: [ spec requires: #('FogComm' 'TaskIt' 'Keccak' 'SmaccSolidity' #Hexadecimal) ].
			spec package: #FogLiveTests with: [ spec requires: #('FogLive' 'FogEVM' 'ParametrizedTests') ] ]
]
