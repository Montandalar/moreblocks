--[[
More Blocks: (x)pane definitions

Copyright (c) 2018 Och Noe   
Licensed under the zlib license. See LICENSE.md for more information.
--]]


xpanes.register_pane("coal_glass_pane", {
        description = "Coal Glass Pane",
        textures = {"moreblocks_coal_glass.png","xpanes_pane_half.png","moreblocks_xpanes_coal.png"},
        inventory_image = "moreblocks_coal_glass.png",
        wield_image = "moreblocks_coal_glass.png",
        sounds = default.node_sound_glass_defaults(),
        groups = {snappy=2, cracky=3, oddly_breakable_by_hand=3},
        recipe = {
	   { "moreblocks:coal_glass", "moreblocks:coal_glass", "moreblocks:coal_glass"},
	   { "moreblocks:coal_glass", "moreblocks:coal_glass", "moreblocks:coal_glass"}
        }
})

xpanes.register_pane("iron_glass_pane", {
        description = "Iron Glass Pane",
        textures = {"moreblocks_iron_glass.png","xpanes_pane_half.png","moreblocks_xpanes_iron.png"},
        inventory_image = "moreblocks_iron_glass.png",
        wield_image = "moreblocks_iron_glass.png",
        sounds = default.node_sound_glass_defaults(),
        groups = {snappy=2, cracky=3, oddly_breakable_by_hand=3},
        recipe = {
	   { "moreblocks:iron_glass", "moreblocks:iron_glass", "moreblocks:iron_glass"},
	   { "moreblocks:iron_glass", "moreblocks:iron_glass", "moreblocks:iron_glass"}
        }
})

xpanes.register_pane("clean_glass_pane", {
        description = "Clean Glass Pane",
        textures = {"moreblocks_clean_glass.png","xpanes_pane_half.png","xpanes_white.png"},
        inventory_image = "moreblocks_clean_glass.png",
        wield_image = "moreblocks_clean_glass.png",
        sounds = default.node_sound_glass_defaults(),
        groups = {snappy=2, cracky=3, oddly_breakable_by_hand=3},
        recipe = {
	   { "moreblocks:clean_glass", "moreblocks:clean_glass", "moreblocks:clean_glass"},
	   { "moreblocks:clean_glass", "moreblocks:clean_glass", "moreblocks:clean_glass"}
        }
})




--	["iron_glass"] = {
--	["coal_glass"] = {
--	["clean_glass"] = {

