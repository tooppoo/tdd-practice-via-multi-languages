Class {
	#name : #MoneyTest,
	#superclass : #TestCase,
	#category : #'TddByExample-Tests'
}

{ #category : #tests }
MoneyTest >> testConvertNumberToDollar [
	self assert: (5 USD isKindOf: Dollar).
]

{ #category : #tests }
MoneyTest >> testCurrency [
	self assert: 5 USD currency equals: 'USD'.
	self assert: 5 CHF currency equals: 'CHF'.
]

{ #category : #tests }
MoneyTest >> testEquality [
	self assert: 5 USD = 5 USD.
	self assert: 5 USD ~= 6 USD.
	
	self assert: 5 CHF = 5 CHF.
	self assert: 5 CHF ~= 6 CHF.
	
	self assert: 5 USD = 5 CHF.
]

{ #category : #tests }
MoneyTest >> testFrancMultiplication [
	| five product |
	five := 5 CHF.
	product := five * 2.
	
	self assert: product equals: 10 CHF.
	
	product := five * 3.
	
	self assert: product equals: 15 CHF.
]

{ #category : #tests }
MoneyTest >> testMultiplication [
	| five product |
	five := 5 USD.
	product := five * 2.
	
	self assert: product equals: 10 USD.
	
	product := five * 3.
	
	self assert: product equals: 15 USD.
]
