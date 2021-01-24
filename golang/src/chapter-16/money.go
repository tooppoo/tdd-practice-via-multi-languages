package money

type Money struct {
	amount   int
	currency string
}

func NewDollar(amount int) Money {
	return newMoney(amount, "USD")
}

func NewFranc(amount int) Money {
	return newMoney(amount, "CHF")
}
func newMoney(amount int, currency string) Money {
	return Money{
		amount:   amount,
		currency: currency,
	}
}

func (m Money) Times(num int) Expression {
	return Money{
		amount:   m.amount * num,
		currency: m.currency,
	}
}
func (m Money) Currency() string {
	return m.currency
}
func (m Money) Plus(other Expression) Expression {
	return NewSum(m, other)
}
func (m Money) Reduce(bank Bank, to string) Money {
	rate := bank.Rate(m.currency, to)

	return newMoney(m.amount/rate, to)
}
