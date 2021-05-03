Class {
	#name : #Money,
	#superclass : #Object,
	#instVars : [
		'price',
		'currency'
	],
	#category : #TddByExample
}

{ #category : #factory }
Money class >> dollar: anPrice [
	^Dollar valueOf: anPrice.
]

{ #category : #factory }
Money class >> franc: anInteger [
	^Franc valueOf: anInteger.
]

{ #category : #constructor }
Money class >> valueOf: aPrice currency: aCurrency [ 
	| ins |
	ins := Money new.
	ins price: aPrice.
	ins currency: aCurrency.
	
	^ins.
]

{ #category : #comparing }
Money >> = anOther [
	^(self price) == (anOther price).
]

{ #category : #accessors }
Money >> currency [
	^currency.
]

{ #category : #accessors }
Money >> currency: aString [ 
	currency := aString.
]

{ #category : #private }
Money >> price [
	^ price
]

{ #category : #private }
Money >> price: aPrice [
	price := aPrice.
]
