# beatoraja_skin_resource
Various resource files related to beatoraja skinning

# table_translate.lua
This is a Lua script that can swap names of various difficulty tables from Japanese to English.
Available are two functions:
* `get_eng_table_full` - if table name is found in dictionary, returns an equivalent of `table_full` string in the `table_name (table_diff)` format
* `get_eng_table_name` - if table name is found in dictionary, returns the English name of the table
If no match is found, both functions will return the default string.
## Usage
First, place the file where your skin's Lua files are, then include it in the main file:
```lua
local table_translate = require("table_translate")
```
Then you can use a `table_translate.get_eng_table_...` function in your code.
Example:
```lua
skin.text = {
  { id = "folder", font = 2, size = 13, align = 1, overflow = 1, constantText = table_translate.get_eng_table_full()},
  }
```
Note that instead of using `ref = 1003` we use `constantText`.
At this moment there is no implementation for `skin.songlist`.
