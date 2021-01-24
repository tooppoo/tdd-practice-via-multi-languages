package money

type Bank struct{}

func NewBank() Bank {
	return Bank{}
}
func (b Bank) Reduce(src Expression, to string) Money {
	return src.Reduce(to)
}
