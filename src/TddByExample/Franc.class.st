Class {
	#name : #Franc,
	#superclass : #Money,
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

{ #category : #accessors }
Franc >> currency [
	^'CHF'.
]
