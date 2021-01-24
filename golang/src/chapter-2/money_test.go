package chapter_2

import (
	"testing"
)

func TestMultiplication(t *testing.T) {
	five := NewDollar(5)

	product := five.times(2)

	if product.Amount != 10 {
		t.Errorf("expected = %d, actual = %d", 10, five.Amount)
	}

	product = five.times(3)

	if product.Amount != 15 {
		t.Errorf("expected = %d, actual = %d", 15, five.Amount)
	}

}
