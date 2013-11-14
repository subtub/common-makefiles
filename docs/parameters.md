## Parameters

Some Makefile need some parameters to run the task. This parameters comes with default settings and can be found at the `parameters` files. The [mocha parameters file](https://github.com/subtub/common-makefiles/blob/master/src/node/mocha/parameters) looks like this:

```
<%>src/node/mocha/parameters</%>
```

If you want to customize a parameter, add the parameter to your main Makefile.

```
PARAMETER_NAME = your_setting
```
