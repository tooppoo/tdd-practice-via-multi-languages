package chapter_4

type Dollar struct {
	amount int
}

func (d Dollar) Times(m int) Dollar {
	return NewDollar(d.amount * m)
}

func NewDollar(amount int) Dollar {
	return Dollar{amount: amount}
}
