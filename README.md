# CommonMakefiles

A set of common Makefiles.

## Install

Add the CommonMakefiles repo to your `package.json` with the following oneliner:

```js
"CommonMakefiles": "https://github.com/subtub/CommonMakefiles/tarball/master"
```

## Example

A small example how to include the node.js tasks to your project Makefile.

```Makefile
COMMON_MAKEFILES_PATH=node_modules/CommonMakefiles
include $(COMMON_MAKEFILES_PATH)/index.make
include $(COMMON_MAKEFILES_PATH)/node/all.make
````
