package money

import "chapter-14/bank"

type RateMap map[bank.Pair]int
type Bank struct {
	rates RateMap
}

func NewBank() Bank {
	return Bank{
		rates: make(RateMap),
	}
}
func (b Bank) Reduce(src Expression, to string) Money {
	return src.Reduce(b, to)
}
func (b Bank) addRate(from string, to string, rate int) {
	pair := bank.Pair{From: from, To: to}

	b.rates[pair] = rate
}
func (b Bank) Rate(from string, to string) int {
	if from == to {
		return 1
	}

	pair := bank.Pair{From: from, To: to}
	rate := b.rates[pair]

	return rate
}
