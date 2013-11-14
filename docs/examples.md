## Examples

If you want to include node.js tasks to your project Makefile getting started with the following snippet:

```Makefile
include node_modules/common-makefiles/node.make

# Your targets here:
foo:
  @echo "foo"

.PHONY: foo
```
