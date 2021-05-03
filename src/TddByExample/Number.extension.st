Extension { #name : #Number }

{ #category : #'*TddByExample' }
Number >> CHF [
	^ Franc valueOf: self.
]

{ #category : #'*TddByExample' }
Number >> USD [
	^ Dollar valueOf: self.
]
