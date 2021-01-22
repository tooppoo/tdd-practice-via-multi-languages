package chapter_1

type Dollar struct {
	Amount int
}

func (d *Dollar) times(m int) {
	d.Amount = d.Amount * m
}

func NewDollar(amount int) *Dollar {
	d := new(Dollar)
	d.Amount = amount

	return d
}
