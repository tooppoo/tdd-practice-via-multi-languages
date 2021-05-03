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
MoneyTest >> testEquality [
	self assert: 5 USD = 5 USD.
	self assert: 5 USD ~= 6 USD.
]

{ #category : #tests }
MoneyTest >> testMultiplication [
	| five |
	five := 5 USD.
	five * 2.
	
	self assert: five equals: 10 USD.
	
	five * 3.
	
	self assert: five equals: 15 USD.
]
