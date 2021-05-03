Class {
	#name : #Franc,
	#superclass : #Money,
	#instVars : [
		'currency'
	],
	#category : #TddByExample
}

{ #category : #constructor }
Franc class >> valueOf: anInteger [ 
	| ins |
	ins := Franc new.
	ins price: anInteger.
	ins currency: 'CHF'.
	
	^ins.
]

{ #category : #operators }
Franc >> * anInteger [ 
	^Franc valueOf: price * anInteger.
]

{ #category : #accessors }
Franc >> currency [
	^currency.
]

{ #category : #accessors }
Franc >> currency: aString [ 
	currency := aString.
]
