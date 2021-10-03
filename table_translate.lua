local main_state = require("main_state")

		local tablelist = {
		["通常難易度表"] = "Normal 1",
		["発狂BMS難易度表"] = "Insane 1",
		["第2通常難易度"] = "Normal 2",
		["第2発狂難易度"] = "Insane 2",
		["BMS図書館"] = "Turbow's BMS Library",
		["池田的難易度表"] = "Ikeda's Beginner Difficulty",
		["発狂難易度データベース（仮）"] = "Hex's Insane Chart Database",
		["皿難易度表(3rd)"] = "Scratch",
		["BMS差分アップローダー表"] = "Hex's BMS Sabun Uploader",
		["Stella Uploader 難易度表"] = "Hex's Stella Uploader",
		["LN難易度"] = "Long Note",
		["DPBMS白難易度表(通常)"] = "DP Normal",
		["DPBMS黒難易度表(発狂)"] = "DP Insane",
		["発狂DPBMSごった煮難易度表"] = "DP Insane 2",
		["発狂PMS難易度"] = "PMS Insane",
		["DP皿難易度表"] = "DP Scratch",
		["δ難易度表"] = "DP Delta"
		}
		

		function tableHasKey(table,key)
			return table[key] ~= nil
		end

		local function get_eng_table_full()

		if tableHasKey(tablelist,main_state.text(1001)) then
		return tablelist[main_state.text(1001)] .. " Table (" .. main_state.text(1002) .. ")"
		else return main_state.text(1003) end
	end
	
		local function get_eng_table_name()
	
		if tableHasKey(tablelist,main_state.text(1001)) then
			return tablelist[main_state.text(1001)] .. " Table"
		else return main_state.text(1001) end
		end
		
		
	
return { 
	get_eng_table_full = get_eng_table_full,
	get_eng_table_name = get_eng_table_name,
		}