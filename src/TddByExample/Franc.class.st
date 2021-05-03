Class {
	#name : #Franc,
	#superclass : #Money,
	#instVars : [
		'currency'
	],
	#category : #TddByExample
}

{ #category : #constructor }
Franc class >> valueOf: anPrice [
	^Franc valueOf: anPrice currency: 'CHF'.
]

{ #category : #constructor }
Franc class >> valueOf: aPrice currency: aCurrency [ 
	| ins |
	ins := Franc new.
	ins price: aPrice.
	ins currency: aCurrency.
	
	^ins.
]

{ #category : #operators }
Franc >> * anInteger [ 
	^Franc valueOf: price * anInteger currency: currency.
]

{ #category : #accessors }
Franc >> currency [
	^currency.
]

{ #category : #accessors }
Franc >> currency: aString [ 
	currency := aString.
]
