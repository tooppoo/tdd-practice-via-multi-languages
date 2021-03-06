Class {
	#name : #MoneyTest,
	#superclass : #TestCase,
	#category : #'TddByExample-Tests'
}

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
	
	self assert: 5 USD ~= 5 CHF.
]

{ #category : #tests }
MoneyTest >> testIdentityRate [
	self assert: (Bank new rateFrom: 'USD' to: 'USD') equals: 1.
]

{ #category : #tests }
MoneyTest >> testMixedAddition [
	| fiveDollars tenFrancs bank result |
	fiveDollars := Money dollar: 5.
	tenFrancs := Money franc: 10.
	bank := Bank new.
	
	bank rateOf: 'CHF' to: 'USD' is: 2.
	result := bank reduce: fiveDollars + tenFrancs to: 'USD'.
	
	self assert: result equals: (Money dollar: 10).
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

{ #category : #tests }
MoneyTest >> testPlusReturnsSum [
	| four six sum |
	four := Money dollar: 4.
	six := Money dollar: 6.
	sum := four + six.
	
	self assert: sum augend equals: four.
	self assert: sum addend equals: six.
]

{ #category : #tests }
MoneyTest >> testReduceMoneyDifferentCurrency [
	| bank result |
	bank := Bank new.
	bank rateOf: 'CHF' to: 'USD' is: 2.
	result := bank reduce: (Money franc: 2) to: 'USD'.
	
	self assert: result equals: (Money dollar: 1).
]

{ #category : #tests }
MoneyTest >> testReduceSum [
	| bank result |
	bank := Bank new.
	result := bank reduce: (Money dollar: 1) to: 'USD'.
	
	self assert: result equals: (Money dollar: 1).
]

{ #category : #tests }
MoneyTest >> testSimpleAddition [
	| five sum bank reduced |
	five := Money dollar: 5.
	sum := five + five.
	bank := Bank new.
	reduced := bank reduce: sum to: 'USD'.
	
	self assert: reduced equals: (Money dollar: 10).
]

{ #category : #tests }
MoneyTest >> testSumPlusMoney [
	| fiveDollars tenFrancs bank sum result |
	fiveDollars := Money dollar: 5.
	tenFrancs := Money franc: 10.
	
	bank := Bank new.
	bank rateOf: 'CHF' to: 'USD' is: 2.
	
	sum := (Sum augend: fiveDollars addend: tenFrancs) + fiveDollars.
	result := bank reduce: sum to: 'USD'.
	
	self assert: result equals: (Money dollar: 15).
]

{ #category : #tests }
MoneyTest >> testSumTimes [
	| fiveDollars tenFrancs bank sum result |
	fiveDollars := Money dollar: 5.
	tenFrancs := Money franc: 10.
	
	bank := Bank new.
	bank rateOf: 'CHF' to: 'USD' is: 2.
	
	sum := (Sum augend: fiveDollars addend: tenFrancs) * 2.
	result := bank reduce: sum to: 'USD'.
	
	self assert: result equals: (Money dollar: 20).
]
