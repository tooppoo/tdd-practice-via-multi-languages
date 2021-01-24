package franc

import (
	. "chapter-5"
	"test/assert"
	"testing"
)

func TestMultiplication(t *testing.T) {
	five := NewFranc(5)

	assert.Equals(NewFranc(10), five.Times(2), t)
	assert.Equals(NewFranc(15), five.Times(3), t)
}
