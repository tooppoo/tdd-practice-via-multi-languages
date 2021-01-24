package assert

import "testing"

func True(actual bool, t *testing.T) {
	if actual != true {
		t.Errorf("expected is true, but actual is %v", actual)
	}
}

func False(actual bool, t *testing.T) {
	if actual != false {
		t.Errorf("expected is false, but actual is %v", actual)
	}
}
