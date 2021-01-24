package money

type Money interface {
	Times(m int) Money

	Currency() string
}

type moneyStructure struct {
	amount   int
	currency string
}

func NewMoney(amount int, currency string) Money {
	return moneyStructure{
		amount:   amount,
		currency: currency,
	}
}
func (m moneyStructure) Times(num int) Money {
	return moneyStructure{
		amount:   m.amount * num,
		currency: m.currency,
	}
}
func (m moneyStructure) Currency() string {
	return m.currency
}

type Dollar struct {
	moneyStructure
}

func NewDollar(amount int) Money {
	return NewMoney(amount, "USD")
}

type Franc struct {
	moneyStructure
}

func NewFranc(amount int) Money {
	return NewMoney(amount, "CHF")
}
