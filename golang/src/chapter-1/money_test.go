package chapter_1

import (
	"testing"
)

func TestMultiplication(t *testing.T) {
	five := NewDollar(5)

	five.times(2)

	if five.Amount != 10 {
		t.Errorf("expected = %d, actual = %d", 10, five.Amount)
	}
}
