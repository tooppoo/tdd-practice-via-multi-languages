package money

type Money interface {
	Times(m int) Money

	Currency() string
}

type moneyStructure struct {
	amount   int
	currency string
}

func (m moneyStructure) Currency() string {
	return m.currency
}

type Dollar struct {
	moneyStructure
}

func (d Dollar) Times(m int) Money {
	return NewDollar(d.amount * m)
}
func NewDollar(amount int) Money {
	return Dollar{
		moneyStructure: moneyStructure{
			amount:   amount,
			currency: "USD",
		},
	}
}

type Franc struct {
	moneyStructure
}

func (d Franc) Times(m int) Money {
	return NewFranc(d.amount * m)
}
func NewFranc(amount int) Money {
	return Franc{
		moneyStructure: moneyStructure{
			amount:   amount,
			currency: "CHF",
		},
	}
}
