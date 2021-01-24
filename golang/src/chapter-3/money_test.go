package chapter_3

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

func TestEquality(t *testing.T) {
	if NewDollar(5) != NewDollar(5) {
		t.Errorf("5 dollar should equals with 5 dollar")
	}
}
