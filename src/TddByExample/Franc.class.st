Class {
	#name : #Franc,
	#superclass : #Money,
	#instVars : [
		'price'
	],
	#category : #TddByExample
}

{ #category : #constructor }
Franc class >> valueOf: anInteger [ 
	| ins |
	ins := Franc new.
	ins price: anInteger.
	
	^ins.
]

{ #category : #operators }
Franc >> * anInteger [ 
	^Franc valueOf: price * anInteger.
]

{ #category : #comparing }
Franc >> = anOther [
	^price == anOther price.
]

{ #category : #private }
Franc >> price [
	^ price
]

{ #category : #private }
Franc >> price: anInteger [ 
	price := anInteger.
]
