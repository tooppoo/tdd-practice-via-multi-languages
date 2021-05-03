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
	^self new price: aPrice;
		currency: aCurrency;
		yourself.
]

{ #category : #operators }
Money >> * anInteger [
	^self class valueOf: price * anInteger currency: currency.
]

{ #category : #operators }
Money >> + aMoney [ 
	^Sum augend: self addend: aMoney.
]

{ #category : #comparing }
Money >> = anOther [
	^price = anOther price and: currency = anOther currency.
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

{ #category : #converting }
Money >> reduce: aBank to: to [
	| rate |
	rate := aBank rateFrom: currency to: to.
		
	^self class valueOf: price / rate currency: to.
]
