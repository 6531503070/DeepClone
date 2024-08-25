# DeepClone

# Exmaple

## import DeepClone module
```lua
local DeepClone = require(script.DeepClone)
```

```lua
local myTable = {
  Coin = 0, Inventory = {1001, 1002, 1003}
}

local newTable = table.clone(myTable)
print(myTable.Inventory == newTable.Inventory) -- true

local newDeepTable = table.clone(myTable)
print(myTable.Inventory == newDeepTable.Inventory) -- false
```
