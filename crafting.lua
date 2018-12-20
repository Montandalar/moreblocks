--[[
More Blocks: crafting recipes

Copyright (c) 2011-2017 Hugo Locurcio and contributors.
Licensed under the zlib license. See LICENSE.md for more information.
--]]

minetest.register_craft({
	output = "default:stick",
	recipe = {{"default:dry_shrub"},}
})

minetest.register_craft({
	output = "default:stick",
	recipe = {{"group:sapling"},}
})

minetest.register_craft({
	output = "default:wood 2",
	recipe = { {"group:wood","",""},
                   {"group:wood","",""},
                   {"","",""}}
})

minetest.register_craft({
	output = "default:wood",
	recipe = {
		{"default:stick", "default:stick"},
		{"default:stick", "default:stick"},
	}
})

minetest.register_craft({
	output = "default:dirt_with_grass",
	type = "shapeless",
	recipe = {"default:junglegrass", "default:dirt"},
})

minetest.register_craft({
	output = "default:dirt_with_grass",
	type = "shapeless",
	recipe = {"default:mese", "default:dirt"},
})

minetest.register_craft({
	output = "default:mossycobble",
	type = "shapeless",
	recipe = {"default:junglegrass", "default:cobble"},
})

minetest.register_craft({
	output = "default:mossycobble",
	type = "shapeless",
	recipe = {"default:mese_crystal_fragment", "default:cobble"},
})

minetest.register_craft({
	output = "moreblocks:wood_tile 9",
	recipe = {
		{"default:wood", "default:wood", "default:wood"},
		{"default:wood", "default:wood", "default:wood"},
		{"default:wood", "default:wood", "default:wood"},
	}
})

minetest.register_craft({
	output = "moreblocks:wood_tile_flipped",
	recipe = {{"moreblocks:wood_tile"},}
})

minetest.register_craft({
	output = "moreblocks:wood_tile_center 9",
	recipe = {
		{"default:wood", "default:wood", "default:wood"},
		{"default:wood", "moreblocks:wood_tile", "default:wood"},
		{"default:wood", "default:wood", "default:wood"},
	}
})

minetest.register_craft({
	output = "moreblocks:wood_tile_full 4",
	recipe = {
		{"moreblocks:wood_tile", "moreblocks:wood_tile"},
		{"moreblocks:wood_tile", "moreblocks:wood_tile"},
	}
})

minetest.register_craft({
	output = "moreblocks:wood_tile_up",
	recipe = {
		{"default:stick"},
		{"moreblocks:wood_tile_center"},
	}
})

minetest.register_craft({
	output = "moreblocks:wood_tile_down",
	recipe = {
		{"moreblocks:wood_tile_center"},
		{"default:stick"},
	}
})

minetest.register_craft({
	output = "moreblocks:wood_tile_left",
	recipe = {
		{"default:stick", "moreblocks:wood_tile_center"},
	}
})

minetest.register_craft({
	output = "moreblocks:wood_tile_right",
	recipe = {
		{"moreblocks:wood_tile_center", "default:stick"},
	}
})

minetest.register_craft({
	output = "moreblocks:circle_stone_bricks 8",
	recipe = {
		{"default:stone", "default:stone", "default:stone"},
		{"default:stone", "", "default:stone"},
		{"default:stone", "default:stone", "default:stone"},
	}
})

minetest.register_craft({
	output = "moreblocks:all_faces_tree 8",
	recipe = {
		{"default:tree", "default:tree", "default:tree"},
		{"default:tree", "", "default:tree"},
		{"default:tree", "default:tree", "default:tree"},
	}
})

minetest.register_craft({
	output = "moreblocks:all_faces_jungle_tree 8",
	recipe = {
		{"default:jungletree", "default:jungletree", "default:jungletree"},
		{"default:jungletree", "", "default:jungletree"},
		{"default:jungletree", "default:jungletree", "default:jungletree"},
	}
})
minetest.register_craft({
	output = "moreblocks:all_faces_pine_tree 8",
	recipe = {
		{"default:pine_tree", "default:pine_tree", "default:pine_tree"},
		{"default:pine_tree", "", "default:pine_tree"},
		{"default:pine_tree", "default:pine_tree", "default:pine_tree"},
	}
})

minetest.register_craft({
	output = "moreblocks:all_faces_acacia_tree 8",
	recipe = {
		{"default:acacia_tree", "default:acacia_tree", "default:acacia_tree"},
		{"default:acacia_tree", "", "default:acacia_tree"},
		{"default:acacia_tree", "default:acacia_tree", "default:acacia_tree"},
	}
})

minetest.register_craft({
	output = "moreblocks:all_faces_aspen_tree 8",
	recipe = {
		{"default:aspen_tree", "default:aspen_tree", "default:aspen_tree"},
		{"default:aspen_tree", "", "default:aspen_tree"},
		{"default:aspen_tree", "default:aspen_tree", "default:aspen_tree"},
	}
})

minetest.register_craft({
	output = "moreblocks:all_faces_mushroom_tree 8",
	recipe = {
		{"ethereal:mushroom_trunk", "ethereal:mushroom_trunk", "ethereal:mushroom_trunk"},
		{"ethereal:mushroom_trunk", "", "ethereal:mushroom_trunk"},
		{"ethereal:mushroom_trunk", "ethereal:mushroom_trunk", "ethereal:mushroom_trunk"},
	}
})




minetest.register_craft({
	output = "moreblocks:sweeper 4",
	recipe = {
		{"default:junglegrass"},
		{"default:stick"},
	}
})

minetest.register_craft({
	output = "moreblocks:stone_tile 4",
	recipe = {
		{"default:cobble", "default:cobble"},
		{"default:cobble", "default:cobble"},
	}
})

minetest.register_craft({
	output = "moreblocks:split_stone_tile",
	recipe = {
		{"moreblocks:stone_tile"},
	}
})

minetest.register_craft({
	output = "moreblocks:split_stone_tile 9",
	recipe = {
           {"moreblocks:stone_tile","moreblocks:stone_tile","moreblocks:stone_tile"},
           {"moreblocks:stone_tile","moreblocks:stone_tile","moreblocks:stone_tile"},
           {"moreblocks:stone_tile","moreblocks:stone_tile","moreblocks:stone_tile"},
	}
})

minetest.register_craft({
	output = "moreblocks:split_stone_tile_alt",
	recipe = {
		{"moreblocks:split_stone_tile"},
	}
})

minetest.register_craft({
	output = "moreblocks:split_stone_tile_alt 9",
	recipe = {
		{"moreblocks:split_stone_tile","moreblocks:split_stone_tile","moreblocks:split_stone_tile"},
		{"moreblocks:split_stone_tile","moreblocks:split_stone_tile","moreblocks:split_stone_tile"},
		{"moreblocks:split_stone_tile","moreblocks:split_stone_tile","moreblocks:split_stone_tile"},
	}
})

minetest.register_craft({
	output = "moreblocks:stone_tile",
	recipe = {
		{"moreblocks:split_stone_tile_alt"},
	}
})

minetest.register_craft({
	output = "moreblocks:stone_tile 9",
	recipe = {
		{"moreblocks:split_stone_tile_alt","moreblocks:split_stone_tile_alt","moreblocks:split_stone_tile_alt"},
		{"moreblocks:split_stone_tile_alt","moreblocks:split_stone_tile_alt","moreblocks:split_stone_tile_alt"},
		{"moreblocks:split_stone_tile_alt","moreblocks:split_stone_tile_alt","moreblocks:split_stone_tile_alt"},
	}
})


minetest.register_craft({
	output = "moreblocks:grey_bricks 2",
	type = "shapeless",
	recipe =  {"default:stone", "default:brick"},
})

minetest.register_craft({
	output = "moreblocks:grey_bricks 2",
	type = "shapeless",
	recipe =  {"default:stonebrick", "default:brick"},
})

minetest.register_craft({
	output = "moreblocks:empty_bookshelf",
	type = "shapeless",
	recipe = {"moreblocks:sweeper", "default:bookshelf"},
	replacements = {{"default:bookshelf", "default:book 3"}},
	-- When obtaining an empty bookshelf, return the books used in it as well
})

minetest.register_craft({
	output = "moreblocks:coal_stone_bricks 4",
	recipe = {
		{"moreblocks:coal_stone", "moreblocks:coal_stone"},
		{"moreblocks:coal_stone", "moreblocks:coal_stone"},
	}
})

minetest.register_craft({
	output = "moreblocks:iron_stone_bricks 4",
	recipe = {
		{"moreblocks:iron_stone", "moreblocks:iron_stone"},
		{"moreblocks:iron_stone", "moreblocks:iron_stone"},
	}
})

minetest.register_craft({
	output = "moreblocks:plankstone 4",
	recipe = {
		{"default:stone", "default:wood"},
		{"default:wood", "default:stone"},
	}
})

minetest.register_craft({
	output = "moreblocks:plankstone 4",
	recipe = {
		{"default:wood", "default:stone"},
		{"default:stone", "default:wood"},
	}
})

minetest.register_craft({
	output = "moreblocks:coal_checker 4",
	recipe = {
		{"default:stone", "default:coal_lump"},
		{"default:coal_lump", "default:stone"},
	}
})

minetest.register_craft({
	output = "moreblocks:coal_checker 4",
	recipe = {
		{"default:coal_lump", "default:stone"},
		{"default:stone", "default:coal_lump"},
	}
})

minetest.register_craft({
	output = "moreblocks:iron_checker 4",
	recipe = {
		{"default:steel_ingot", "default:stone"},
		{"default:stone", "default:steel_ingot"},
	}
})

minetest.register_craft({
	output = "moreblocks:iron_checker 4",
	recipe = {
		{"default:stone", "default:steel_ingot"},
		{"default:steel_ingot", "default:stone"},
	}
})

minetest.register_craft({
	output = "default:chest_locked",
	type = "shapeless",
	recipe = {"default:steel_ingot", "default:chest"},
})
minetest.register_craft({
	output = "default:chest_locked",
	type = "shapeless",
	recipe = {"default:copper_ingot", "default:chest"},
})

minetest.register_craft({
	output = "default:chest_locked",
	type = "shapeless",
	recipe = {"default:bronze_ingot", "default:chest"},
})

minetest.register_craft({
	output = "default:chest_locked",
	type = "shapeless",
	recipe = {"default:gold_ingot", "default:chest"},
})

minetest.register_craft({
	output = "moreblocks:iron_glass",
	type = "shapeless",
	recipe = {"default:steel_ingot", "default:glass"},
})

minetest.register_craft({
	output = "default:glass",
	type = "shapeless",
	recipe = {"default:coal_lump", "moreblocks:iron_glass"},
})


minetest.register_craft({
	output = "moreblocks:coal_glass",
	type = "shapeless",
	recipe = {"default:coal_lump", "default:glass"},
})

minetest.register_craft({
	output = "default:glass",
	type = "shapeless",
	recipe = {"default:steel_ingot", "moreblocks:coal_glass"},
})

minetest.register_craft({
	output = "moreblocks:clean_glass",
	type = "shapeless",
	recipe = {"moreblocks:sweeper", "default:glass"},
})

minetest.register_craft({
	output = "moreblocks:glow_glass",
	type = "shapeless",
	recipe = {"default:torch", "default:glass"},
})

minetest.register_craft({
	output = "moreblocks:trap_glow_glass",
	type = "shapeless",
	recipe = {"default:mese_crystal_fragment", "default:glass", "default:torch"},
})

minetest.register_craft({
	output = "moreblocks:trap_glow_glass",
	type = "shapeless",
	recipe = {"default:mese_crystal_fragment", "moreblocks:glow_glass"},
})

minetest.register_craft({
	output = "moreblocks:super_glow_glass",
	type = "shapeless",
	recipe = {"default:torch", "default:torch", "default:glass"},
})

minetest.register_craft({
	output = "moreblocks:super_glow_glass",
	type = "shapeless",
	recipe = {"default:torch", "moreblocks:glow_glass"},
})


minetest.register_craft({
	output = "moreblocks:trap_super_glow_glass",
	type = "shapeless",
	recipe = {"default:mese_crystal_fragment", "default:glass", "default:torch", "default:torch"},
})

minetest.register_craft({
	output = "moreblocks:trap_super_glow_glass",
	type = "shapeless",
	recipe = {"default:mese_crystal_fragment", "moreblocks:super_glow_glass"},
})

minetest.register_craft({
	output = "moreblocks:coal_stone",
	type = "shapeless",
	recipe = {"default:coal_lump", "default:stone"},
})

minetest.register_craft({
	output = "default:stone",
	type = "shapeless",
	recipe = {"default:steel_ingot", "moreblocks:coal_stone"},
})

minetest.register_craft({
	output = "moreblocks:iron_stone",
	type = "shapeless",
	recipe = {"default:steel_ingot", "default:stone"},
})

minetest.register_craft({
	output = "default:stone",
	type = "shapeless",
	recipe = {"default:coal_lump", "moreblocks:iron_stone"},
})

minetest.register_craft({
	output = "moreblocks:trap_stone",
	type = "shapeless",
	recipe = {"default:mese_crystal_fragment", "default:stone"},
})

minetest.register_craft({
        output = "moreblocks:trap_desert_stone",
        type = "shapeless",
        recipe = {"default:mese_crystal_fragment", "default:desert_stone"},
})

minetest.register_craft({
	output = "moreblocks:trap_glass",
	type = "shapeless",
	recipe = {"default:mese_crystal_fragment", "default:glass"},
})

minetest.register_craft({
        output = "moreblocks:trap_obsidian_glass",
        type = "shapeless",
        recipe = {"default:mese_crystal_fragment", "default:obsidian_glass"},
})

minetest.register_craft({
        output = "moreblocks:trap_obsidian",
        type = "shapeless",
        recipe = {"default:mese_crystal_fragment", "default:obsidian"},
})

minetest.register_craft({
        output = "moreblocks:trap_sandstone",
        type = "shapeless",
        recipe = {"default:mese_crystal_fragment", "default:sandstone"},
})

minetest.register_craft({
	output = "moreblocks:cactus_brick",
	type = "shapeless",
	recipe = {"default:cactus", "default:brick"},
})

minetest.register_craft({
	output = "moreblocks:cactus_checker 4",
	recipe = {
		{"default:cactus", "default:stone"},
		{"default:stone", "default:cactus"},
	}
})

minetest.register_craft({
	output = "moreblocks:cactuschecker 4",
	recipe = {
		{"default:stone", "default:cactus"},
		{"default:cactus", "default:stone"},
	}
})

minetest.register_craft({
	output = "moreblocks:rope 3",
	recipe = {
		{"default:junglegrass"},
		{"default:junglegrass"},
		{"default:junglegrass"},
	}
})

minetest.register_craft({
        output = "moreblocks:dirt_compressed",
        recipe = {
                {'default:dirt', 'default:dirt', 'default:dirt'},
                {'default:dirt', 'default:dirt', 'default:dirt'},
                {'default:dirt', 'default:dirt', 'default:dirt'},
        }
})

minetest.register_craft({
        output = "default:dirt 9",
        recipe = {{"moreblocks:dirt_compressed"}},
})

minetest.register_craft({
	output = "moreblocks:cobble_compressed",
	recipe = {
		{"default:cobble", "default:cobble", "default:cobble"},
		{"default:cobble", "default:cobble", "default:cobble"},
		{"default:cobble", "default:cobble", "default:cobble"},
	}
})

minetest.register_craft({
	output = "default:cobble 9",
	recipe = {
		{"moreblocks:cobble_compressed"},
	}
})

minetest.register_craft({
        output = "moreblocks:cobble_condensed",
        recipe = {
                {"moreblocks:cobble_compressed", "moreblocks:cobble_compressed",
          "moreblocks:cobble_compressed"},
                {"moreblocks:cobble_compressed", "moreblocks:cobble_compressed",
          "moreblocks:cobble_compressed"},
                {"moreblocks:cobble_compressed", "moreblocks:cobble_compressed",
          "moreblocks:cobble_compressed"},
        }
})

minetest.register_craft({
   type = "shapeless",
        output = "moreblocks:cobble_compressed 9",
        recipe = {"moreblocks:cobble_condensed"}
})

minetest.register_craft({
	type = "cooking", output = "moreblocks:tar", recipe = "default:gravel",
})

minetest.register_craft({
	type = "shapeless",
	output = "moreblocks:copperpatina",
	recipe = {"bucket:bucket_water", "default:copperblock"},
	replacements = {
		{"bucket:bucket_water", "bucket:bucket_empty"}
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "moreblocks:copperpatina",
	recipe = {"bucket:bucket_river_water", "default:copperblock"},
	replacements = {
		{"bucket:bucket_river_water", "bucket:bucket_empty"}
	}
})

minetest.register_craft({
	output = "default:copper_ingot 9",
	recipe = {
		{"moreblocks:copperpatina"},
	}
})

if minetest.settings:get_bool("moreblocks.circular_saw_crafting") ~= false then -- “If nil or true then”
	minetest.register_craft({
		output = "moreblocks:circular_saw",
		recipe = {
			{ "",  "default:steel_ingot",  "" },
			{ "group:wood",  "group:wood",  "group:wood"},
			{ "group:wood",  "",  "group:wood"},
		}
	})
end


minetest.register_craft({
   type = "shapeless",
        output = "moreblocks:blue_tinted_glass 8",
        recipe = {"default:glass", "default:glass", "default:glass", 
           "default:glass", "dye:blue", "default:glass", 
           "default:glass", "default:glass", "default:glass"}
})

minetest.register_craft({
   type = "shapeless",
        output = "moreblocks:cyan_tinted_glass 8",
        recipe = {"default:glass", "default:glass", "default:glass", 
           "default:glass", "dye:cyan", "default:glass", 
           "default:glass", "default:glass", "default:glass"}
})

minetest.register_craft({
   type = "shapeless",
        output = "moreblocks:green_tinted_glass 8",
        recipe = {"default:glass", "default:glass", "default:glass", 
           "default:glass", "dye:green", "default:glass", 
           "default:glass", "default:glass", "default:glass"}
})

minetest.register_craft({
   type = "shapeless",
        output = "moreblocks:grey_tinted_glass 8",
        recipe = {"default:glass", "default:glass", "default:glass", 
           "default:glass", "dye:grey", "default:glass", 
           "default:glass", "default:glass", "default:glass"}
})

minetest.register_craft({
   type = "shapeless",
        output = "moreblocks:magenta_tinted_glass 8",
        recipe = {"default:glass", "default:glass", "default:glass", 
           "default:glass", "dye:magenta", "default:glass", 
           "default:glass", "default:glass", "default:glass"}
})


minetest.register_craft({
   type = "shapeless",
        output = "moreblocks:red_tinted_glass 8",
        recipe = {"default:glass", "default:glass", "default:glass", 
           "default:glass", "dye:red", "default:glass", 
           "default:glass", "default:glass", "default:glass"}
})

minetest.register_craft({
   type = "shapeless",
        output = "moreblocks:white_tinted_glass 8",
        recipe = {"default:glass", "default:glass", "default:glass", 
           "default:glass", "dye:white", "default:glass", 
           "default:glass", "default:glass", "default:glass"}
})

minetest.register_craft({
   type = "shapeless",
        output = "moreblocks:yellow_tinted_glass 8",
        recipe = {"default:glass", "default:glass", "default:glass", 
           "default:glass", "dye:yellow", "default:glass", 
           "default:glass", "default:glass", "default:glass"}
})


minetest.register_craft({
                           output = "moreblocks:gravel_stonebrick 2",
                           recipe = {
                              { "default:gravel" },
                              { "default:stonebrick"},
                           }
                        })

minetest.register_craft({
                           output = "moreblocks:gravel_slope 6",
                           recipe = {
                              { "","","" },
                              { "","","default:gravel", },
                              { "", "default:gravel", "default:gravel" },
                           }
                        })


minetest.register_craft({
                           output = "moreblocks:gravel_slope2_a 12",
                           recipe = {
                              { "","","" },
                              { "","","", },
                              { "", "default:gravel", "default:gravel" },
                           }
                        })

minetest.register_craft({
                           output = "moreblocks:gravel_slope2_b 4",
                           recipe = {
                              { "","","default:gravel", },
                              { "","","" },
                              { "", "default:gravel", "default:gravel" },
                           }
                        })

minetest.register_craft({
                           output = "moreblocks:gravel_slope3_a 18",
                           recipe = {
                              { "","","" },
                              { "","","", },
                              { "default:gravel", "default:gravel", "default:gravel" },
                           }
                        })

minetest.register_craft({
                           output = "moreblocks:gravel_slope3_b 8",
                           recipe = {
                              { "","","" },
                              { "","","default:gravel", },
                              { "default:gravel", "default:gravel", "default:gravel" },
                           }
                        })

minetest.register_craft({
                           output = "moreblocks:gravel_slope3_c 8",
                           recipe = {
                              { "","","default:gravel", },
                              { "","default:gravel","" },
                              { "default:gravel", "default:gravel", "default:gravel" },
                           }
                        })


