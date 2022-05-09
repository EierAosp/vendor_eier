package generator

import (
	"fmt"

	"android/soong/android"
)

func eierExpandVariables(ctx android.ModuleContext, in string) string {
	eierVars := ctx.Config().VendorConfig("eierVarsPlugin")

	out, err := android.Expand(in, func(name string) (string, error) {
		if eierVars.IsSet(name) {
			return eierVars.String(name), nil
		}
		// This variable is not for us, restore what the original
		// variable string will have looked like for an Expand
		// that comes later.
		return fmt.Sprintf("$(%s)", name), nil
	})

	if err != nil {
		ctx.PropertyErrorf("%s: %s", in, err.Error())
		return ""
	}

	return out
}
