package franc

import (
	. "chapter-6"
	"test/assert"
	"testing"
)

func TestMultiplication(t *testing.T) {
	five := NewFranc(5)

	assert.Equals(NewFranc(10), five.Times(2), t)
	assert.Equals(NewFranc(15), five.Times(3), t)
}

func TestEquality(t *testing.T) {
	assert.True(NewFranc(5) == NewFranc(5), t)
	assert.False(NewFranc(5) == NewFranc(6), t)
}
