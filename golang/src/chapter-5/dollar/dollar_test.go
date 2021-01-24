package dollar

import (
	. "chapter-5"
	"test/assert"
	"testing"
)

func TestMultiplication(t *testing.T) {
	five := NewDollar(5)

	assert.Equals(NewDollar(10), five.Times(2), t)
	assert.Equals(NewDollar(15), five.Times(3), t)
}

func TestEquality(t *testing.T) {
	assert.True(NewDollar(5) == NewDollar(5), t)
	assert.False(NewDollar(5) == NewDollar(6), t)
}
