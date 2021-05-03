Extension { #name : #Number }

{ #category : #'*TddByExample' }
Number >> CHF [
	^Money franc: self.
]

{ #category : #'*TddByExample' }
Number >> USD [
	^Money dollar: self.
]
