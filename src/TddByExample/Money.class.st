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
Money class >> dollar: aPrice [
	^self valueOf: aPrice currency: 'USD'.
]

{ #category : #factory }
Money class >> franc: aPrice [
	^self valueOf: aPrice currency: 'CHF'.
]

{ #category : #constructor }
Money class >> valueOf: aPrice currency: aCurrency [ 
	| ins |
	ins := self new.
	ins price: aPrice.
	ins currency: aCurrency.
	
	^ins.
]

{ #category : #operators }
Money >> * anInteger [
	^Money valueOf: self price * anInteger currency: currency.
]

{ #category : #operators }
Money >> + aMoney [ 
	^self class
		valueOf: self price + aMoney price
		currency: aMoney currency.
]

{ #category : #comparing }
Money >> = anOther [
	^self price == anOther price and: self currency == anOther currency.
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
