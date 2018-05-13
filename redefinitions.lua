--[[
More Blocks: redefinitions of default stuff

Copyright (c) 2011-2017 Hugo Locurcio and contributors.
Licensed under the zlib license. See LICENSE.md for more information.
--]]

-- Redefinitions of some default crafting recipes:

minetest.register_craft({
	output = "default:sign_wall 4",
	recipe = {
		{"default:wood", "default:wood", "default:wood"},
		{"default:wood", "default:wood", "default:wood"},
		{"", "default:stick", ""},
	}
})

minetest.register_craft({
	output = "default:ladder 4",
	recipe = {
		{"default:stick", "", "default:stick"},
		{"default:stick", "default:stick", "default:stick"},
		{"default:stick", "", "default:stick"},
	}
})


minetest.clear_craft({ 	recipe = { 
		{"default:papyrus", "default:papyrus", "default:papyrus"},
	{"","","",},
	{"","","",}
	}
 }) 

minetest.register_craft({
	output = "default:paper 4",
	recipe = {
		{"default:papyrus", "default:papyrus", "default:papyrus"},
	}
})

minetest.register_craft({
	output = "default:rail 24",
	recipe = {
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"default:steel_ingot", "default:stick", "default:steel_ingot"},
		{"default:steel_ingot", "", "default:steel_ingot"},
	}
})

minetest.register_craft({
	type = "toolrepair",
	additional_wear = -0.10, -- Tool repair buff (10% bonus instead of 2%).
})


-- minetest.register_alias("old","new")

-- bookshelf
minetest.register_alias("moreblocks:empty_shelf","moreblocks:empty_bookshelf")


-- checkered stones and the cut versions
minetest.register_alias("moreblocks:checker_stone_tile","moreblocks:split_stone_tile_alt")
-- loop though the circular saw subtypes

cs_names = {
        {"micro", "_1"},
        {"panel", "_1"},
        {"micro", "_2"},
        {"panel", "_2"},
        {"micro", "_4"},
        {"panel", "_4"},
        {"micro", ""},
        {"panel", ""},

        {"micro", "_12"},
        {"panel", "_12"},
        {"micro", "_14"},
        {"panel", "_14"},
        {"micro", "_15"},
        {"panel", "_15"},
        {"stair", "_outer"},
        {"stair", ""},

        {"stair", "_inner"},
        {"slab", "_1"},
        {"slab", "_2"},
        {"slab", "_quarter"},
        {"slab", ""},
        {"slab", "_three_quarter"},
        {"slab", "_14"},
        {"slab", "_15"},

        {"slab", "_two_sides"},
        {"slab", "_three_sides"},
        {"slab", "_three_sides_u"},
        {"stair", "_half"},
        {"stair", "_alt_1"},
        {"stair", "_alt_2"},
        {"stair", "_alt_4"},
        {"stair", "_alt"},

        {"slope", ""},
        {"slope", "_half"},
        {"slope", "_half_raised"},
        {"slope", "_inner"},
        {"slope", "_inner_half"},
        {"slope", "_inner_half_raised"},
        {"slope", "_inner_cut"},
        {"slope", "_inner_cut_half"},

        {"slope", "_inner_cut_half_raised"},
        {"slope", "_outer"},
        {"slope", "_outer_half"},
        {"slope", "_outer_half_raised"},
        {"slope", "_outer_cut"},
        {"slope", "_outer_cut_half"},
        {"slope", "_outer_cut_half_raised"},
        {"slope", "_cut"},
}

local nodename_dev = "checker_stone_tile"
local nodename_11  = "split_stone_tile_alt"


for i = 1, #cs_names do
	local t = cs_names[i]
        local cs_nodename_dev =  "moreblocks" .. ":" .. t[1] .. "_" .. nodename_dev .. t[2]
        local cs_nodename_11 = "moreblocks" .. ":" .. t[1] .. "_" .. nodename_11 .. t[2]
	minetest.register_alias(cs_nodename_dev,cs_nodename_11)
end



-- wood tiles
minetest.register_alias("moreblocks:wood_tile_offset", "moreblocks:wood_tile_up")

-- desert stone stair
-- created in dungeons

-- minetest.register_alias("stairs:stair_desert_stone","moreblocks:stair_desert_stone")


-- new trapstones and other blocks
--  all_faces_acaia_tree
--  all_faces_pine_tree
--  compressed_dirt
--  trap_desert_stone
--  trap_obsidian
--  trap_obsidian_glass
--  trap_sandstone
--  in nodes.lua and crafting.lua


