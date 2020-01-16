--[[
More Blocks: node definitions

Copyright (c) 2011-2017 Hugo Locurcio and contributors.
              2018,2019 Och_Noe 
Licensed under the zlib license. See LICENSE.md for more information.
--]]

local S = moreblocks.intllib

local sound_dirt = default.node_sound_dirt_defaults()
local sound_wood = default.node_sound_wood_defaults()
local sound_stone = default.node_sound_stone_defaults()
local sound_glass = default.node_sound_glass_defaults()
local sound_leaves = default.node_sound_leaves_defaults()
local sound_gravel = default.node_sound_gravel_defaults()

-- Don't break on 0.4.14 and earlier.
local sound_metal = (default.node_sound_metal_defaults
		and default.node_sound_metal_defaults() or sound_stone)

local function tile_tiles(name)
	local tex = "moreblocks_" ..name.. ".png"
	return {tex, tex, tex, tex, tex.. "^[transformR90", tex.. "^[transformR90"}
end

local box_slope = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
}

local box_slope_half = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5,   -0.5,  0.5, -0.375, 0.5},
		{-0.5, -0.375, -0.25, 0.5, -0.25,  0.5},
		{-0.5, -0.25,  0,    0.5, -0.125, 0.5},
		{-0.5, -0.125, 0.25, 0.5,  0,     0.5},
	}
}

local box_slope_half_raised = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5,   -0.5,  0.5, 0.125, 0.5},
		{-0.5, 0.125, -0.25, 0.5, 0.25,  0.5},
		{-0.5, 0.25,  0,    0.5, 0.375, 0.5},
		{-0.5, 0.375, 0.25, 0.5,  0.5,     0.5},
	}
}


local box_slope_third = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5,   -0.5,  0.5, -0.417 , 0.5},
		{-0.5, -0.417, -0.25, 0.5, -0.333 , 0.5},
		{-0.5, -0.333,  0,    0.5, -0.250 , 0.5},
		{-0.5, -0.250,  0.25, 0.5, -0.167, 0.5},
	}
}

local box_slope_third_raised = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5,   -0.5,  0.5, -0.083 , 0.5},
		{-0.5, -0.083, -0.25, 0.5,  0     , 0.5},
		{-0.5,  0    ,  0,    0.5,  0.083 , 0.5},
		{-0.5,  0.083,  0.25, 0.5,  0.167, 0.5},
	}
}

local box_slope_third_top = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5,   -0.5,  0.5, 0.250, 0.5},
		{-0.5,  0.250, -0.25, 0.5, 0.333, 0.5},
		{-0.5,  0.333,  0,    0.5, 0.417, 0.5},
		{-0.5,  0.417,  0.25, 0.5, 0.5  , 0.5},
	}
}


local nodes = {
	["wood_tile"] = {
		description = S("Wooden Tile"),
		groups = {snappy = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		tiles = {"default_wood.png^moreblocks_wood_tile.png",
		"default_wood.png^moreblocks_wood_tile.png",
		"default_wood.png^moreblocks_wood_tile.png",
		"default_wood.png^moreblocks_wood_tile.png",
		"default_wood.png^moreblocks_wood_tile.png^[transformR90",
		"default_wood.png^moreblocks_wood_tile.png^[transformR90"},
		sounds = sound_wood,
	},
	["wood_tile_flipped"] = {
		description = S("Wooden Tile"),
		groups = {wood = 1, snappy = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		tiles = {"default_wood.png^moreblocks_wood_tile.png^[transformR90",
		"default_wood.png^moreblocks_wood_tile.png^[transformR90",
		"default_wood.png^moreblocks_wood_tile.png^[transformR90",
		"default_wood.png^moreblocks_wood_tile.png^[transformR90",
		"default_wood.png^moreblocks_wood_tile.png^[transformR180",
		"default_wood.png^moreblocks_wood_tile.png^[transformR180"},
		sounds = sound_wood,
		no_stairs = true,
	},
	["wood_tile_center"] = {
		description = S("Centered Wooden Tile"),
		groups = {wood = 1, snappy = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		tiles = {"default_wood.png^moreblocks_wood_tile_center.png"},
		sounds = sound_wood,
	},
	["wood_tile_full"] = {
		description = S("Full Wooden Tile"),
		groups = {wood = 1, snappy = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		tiles = tile_tiles("wood_tile_full"),
		sounds = sound_wood,
	},
	["wood_tile_up"] = {
		description = S("Upwards Wooden Tile"),
		groups = {wood = 1, snappy = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		tiles = {"default_wood.png^moreblocks_wood_tile_up.png"},
		sounds = sound_wood,
		no_stairs = true,
	},
	["wood_tile_down"] = {
		description = S("Downwards Wooden Tile"),
		groups = {wood = 1, snappy = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		tiles = {"default_wood.png^[transformR180^moreblocks_wood_tile_up.png^[transformR180"},
		sounds = sound_wood,
		no_stairs = true,
	},
	["wood_tile_left"] = {
		description = S("Leftwards Wooden Tile"),
		groups = {wood = 1, snappy = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		tiles = {"default_wood.png^[transformR270^moreblocks_wood_tile_up.png^[transformR270"},
		sounds = sound_wood,
		no_stairs = true,
	},
	["wood_tile_right"] = {
		description = S("Rightwards Wooden Tile"),
		groups = {wood = 1, snappy = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		tiles = {"default_wood.png^[transformR90^moreblocks_wood_tile_up.png^[transformR90"},
		sounds = sound_wood,
		no_stairs = true,
	},
	["circle_stone_bricks"] = {
		description = S("Circle Stone Bricks"),
		groups = {cracky = 3},
		sounds = sound_stone,
	},
	["grey_bricks"] = {
		description = S("Stone Bricks"),
		groups = {cracky = 3},
		sounds = sound_stone,
	},
	["coal_stone_bricks"] = {
		description = S("Coal Stone Bricks"),
		groups = {cracky = 3},
		sounds = sound_stone,
	},
	["iron_stone_bricks"] = {
		description = S("Iron Stone Bricks"),
		groups = {cracky = 3},
		sounds = sound_stone,
	},
	["stone_tile"] = {
		description = S("Stone Tile"),
		groups = {cracky = 3},
		sounds = sound_stone,
	},
	["split_stone_tile"] = {
		description = S("Split Stone Tile"),
		tiles = {"moreblocks_split_stone_tile_top.png",
			"moreblocks_split_stone_tile.png"},
		groups = {cracky = 3},
		sounds = sound_stone,
	},
	["split_stone_tile_alt"] = {
		description = S("Checkered Stone Tile"),
		groups = {cracky = 3},
		sounds = sound_stone,
	},
	["tar"] = {
		description = S("Tar"),
		groups = {cracky = 2, tar_block = 1},
		sounds = sound_stone,
	},
        ["dirt_compressed"] = {
                description = S("Compressed Dirt"),
                groups = {crumbly=2},
                is_ground_content = false,
                sounds = sound_dirt,
        },
	["cobble_compressed"] = {
		description = S("Compressed Cobblestone"),
		groups = {cracky = 1},
		sounds = sound_stone,
	},
        ["cobble_condensed"] = {
           description = "Condensed Cobblestone",
           tiles = {"moreblocks_cobble_compressed.png^[colorize:black:255]"},
           is_ground_content = false,
           groups = {cracky = 1, stone = 2},
           stack_max = 999,
           sounds = default.node_sound_stone_defaults(),
        },
	["plankstone"] = {
		description = S("Plankstone"),
		groups = {cracky = 3},
		tiles = tile_tiles("plankstone"),
		sounds = sound_stone,
	},
	["iron_glass"] = {
		description = S("Iron Glass"),
		drawtype = "glasslike_framed_optional",
		tiles = {"moreblocks_iron_glass.png", "moreblocks_iron_glass_detail.png"},
		--tiles = {"moreblocks_iron_glass.png"},
                one_texture = true,
		paramtype = "light",
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},
	["coal_glass"] = {
		description = S("Coal Glass"),
		drawtype = "glasslike_framed_optional",
		tiles = {"moreblocks_coal_glass.png", "moreblocks_coal_glass_detail.png"},
		--tiles = {"moreblocks_coal_glass.png"},
                one_texture = true,
		paramtype = "light",
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},
	["clean_glass"] = {
		description = S("Clean Glass"),
		drawtype = "glasslike_framed_optional",
		tiles = {"moreblocks_clean_glass.png", "moreblocks_clean_glass_detail.png"},
		-- tiles = {"moreblocks_clean_glass.png"},
                one_texture = true,
		paramtype = "light",
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},
	["cactus_brick"] = {
		description = S("Cactus Brick"),
		groups = {cracky = 3},
		sounds = sound_stone,
	},
	["cactus_checker"] = {
		description = S("Cactus Checker"),
		groups = {cracky = 3},
		tiles = {"default_stone.png^moreblocks_cactus_checker.png",
		"default_stone.png^moreblocks_cactus_checker.png",
		"default_stone.png^moreblocks_cactus_checker.png",
		"default_stone.png^moreblocks_cactus_checker.png",
		"default_stone.png^moreblocks_cactus_checker.png^[transformR90",
		"default_stone.png^moreblocks_cactus_checker.png^[transformR90"},
		sounds = sound_stone,
	},
	["empty_bookshelf"] = {
		description = S("Empty Bookshelf"),
		tiles = {"default_wood.png", "default_wood.png",
			"moreblocks_empty_bookshelf.png"},
		groups = {snappy = 2, choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = sound_wood,
		furnace_burntime = 15,
		no_stairs = true,
	},
	["coal_stone"] = {
		description = S("Coal Stone"),
		groups = {cracky = 3},
		sounds = sound_stone,
	},
	["iron_stone"] = {
		description = S("Iron Stone"),
		groups = {cracky = 3},
		sounds = sound_stone,
	},
	["coal_checker"] = {
		description = S("Coal Checker"),
		tiles = {"default_stone.png^moreblocks_coal_checker.png",
		"default_stone.png^moreblocks_coal_checker.png",
		"default_stone.png^moreblocks_coal_checker.png",
		"default_stone.png^moreblocks_coal_checker.png",
		"default_stone.png^moreblocks_coal_checker.png^[transformR90",
		"default_stone.png^moreblocks_coal_checker.png^[transformR90"},
		groups = {cracky = 3},
		sounds = sound_stone,
	},
	["iron_checker"] = {
		description = S("Iron Checker"),
		tiles = {"default_stone.png^moreblocks_iron_checker.png",
		"default_stone.png^moreblocks_iron_checker.png",
		"default_stone.png^moreblocks_iron_checker.png",
		"default_stone.png^moreblocks_iron_checker.png",
		"default_stone.png^moreblocks_iron_checker.png^[transformR90",
		"default_stone.png^moreblocks_iron_checker.png^[transformR90"},
		groups = {cracky = 3},
		sounds = sound_stone,
	},
	["trap_stone"] = {
		description = S("Trap Stone"),
		walkable = false,
		groups = {cracky = 3},
		sounds = sound_stone,
		no_stairs = true,
	},
        ["trap_desert_stone"] = {
                description = S("Trap Desert Stone"),
                drawtype = "glasslike_framed",
                tiles = {"default_desert_stone.png^moreblocks_trap_box.png"},
                walkable = false,
                groups = {cracky = 3},
                paramtype = "light",
                is_ground_content = false,
                sounds = sound_stone,
                no_stairs = true,
        },
	["trap_glass"] = {
		description = S("Trap Glass"),
		drawtype = "glasslike_framed_optional",
		tiles = {"moreblocks_trap_glass.png", "default_glass_detail.png"},
		--tiles = {"moreblocks_trap_glass.png"},
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
		no_stairs = true,
	},
        ["trap_obsidian_glass"] = {
                description = S("Trap Obsidian Glass"),
                drawtype = "glasslike_framed_optional",
                tiles = {"default_obsidian_glass.png^moreblocks_trap_box_glass.png", "default_obsidian_glass_detail.png"},
                paramtype = "light",
                sunlight_propagates = true,
                is_ground_content = false,
                walkable = false,
                groups = {cracky = 3, oddly_breakable_by_hand = 3},
                sounds = sound_glass,
                no_stairs = true,
        },
        ["trap_obsidian"] = {
                description = S("Trap Obsidian"),
                drawtype = "glasslike_framed",
                tiles = {"default_obsidian.png^moreblocks_trap_box.png"},
                walkable = false,
                groups = {cracky = 1, level = 2},
                paramtype = "light",
                is_ground_content = false,
                sounds = sound_stone,
                no_stairs = true,
        },
        ["trap_sandstone"] = {
                description = S("Trap Sandstone"),
                drawtype = "glasslike_framed",
                tiles = {"default_sandstone.png^moreblocks_trap_box.png"},
                walkable = false,
                groups = {crumbly = 1, cracky = 3},
                paramtype = "light",
                is_ground_content = false,
                sounds = sound_stone,
                no_stairs = true,
        },
	["all_faces_tree"] = {
		description = S("All-faces Tree"),
		tiles = {"default_tree_top.png"},
		groups = {tree = 1,snappy = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
		sounds = sound_wood,
		furnace_burntime = 30,
	},
	["all_faces_jungle_tree"] = {
		description = S("All-faces Jungle Tree"),
		tiles = {"default_jungletree_top.png"},
		groups = {tree = 1,snappy = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
		sounds = sound_wood,
		furnace_burntime = 30,
	},
        ["all_faces_pine_tree"] = {
                description = S("All-faces Pine Tree"),
                tiles = {"default_pine_tree_top.png"},
                groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
                sounds = sound_wood,
                furnace_burntime = 26,
        },
        ["all_faces_acacia_tree"] = {
                description = S("All-faces Acacia Tree"),
                tiles = {"default_acacia_tree_top.png"},
                groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
                sounds = sound_wood,
                furnace_burntime = 34,
        },
        ["all_faces_aspen_tree"] = {
                description = S("All-faces Aspen Tree"),
                tiles = {"default_aspen_tree_top.png"},
                groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
                sounds = sound_wood,
                furnace_burntime = 22,
        },
	["glow_glass"] = {
		description = S("Glow Glass"),
		drawtype = "glasslike_framed_optional",
		tiles = {"moreblocks_glow_glass.png", "moreblocks_glow_glass_detail.png"},
		-- tiles = {"moreblocks_glow_glass.png"},
                one_texture = true,
		paramtype = "light",
		sunlight_propagates = true,
		light_source = 11,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},
	["trap_glow_glass"] = {
		description = S("Trap Glow Glass"),
		drawtype = "glasslike_framed_optional",
		tiles = {"moreblocks_trap_glass.png", "moreblocks_glow_glass_detail.png"},
		-- tiles = {"moreblocks_trap_glass.png"},
		paramtype = "light",
		sunlight_propagates = true,
		light_source = 11,
		walkable = false,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
		no_stairs = true,
	},
	["super_glow_glass"] = {
		description = S("Super Glow Glass"),
		drawtype = "glasslike_framed_optional",
		tiles = {"moreblocks_super_glow_glass.png", "moreblocks_super_glow_glass_detail.png"},
		-- tiles = {"moreblocks_super_glow_glass.png"},
		-- tiles = {"default_glass.png^[colorize:#FFFF78"},
                one_texture = true,
		paramtype = "light",
		sunlight_propagates = true,
		light_source = 14,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},
	["dim_glow_glass"] = {
		description = S("Dim Glow Glass"),
		drawtype = "glasslike_framed_optional",
		tiles = {"moreblocks_dim_glow_glass.png"},
		-- tiles = {"default_glass.png^[colorize:#FFFF78"},
                one_texture = true,                
		use_texture_alpha = true,
		paramtype = "light",
		sunlight_propagates = true,
		light_source = 5,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},
	["low_glow_glass"] = {
		description = S("Low Glow Glass"),
		drawtype = "glasslike_framed_optional",
		tiles = {"moreblocks_low_glow_glass.png"},
		-- tiles = {"default_glass.png^[colorize:#FFFF78"},
                one_texture = true,                
		use_texture_alpha = true,
		paramtype = "light",
		sunlight_propagates = true,
		light_source = 8,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},
	["trap_super_glow_glass"] = {
		description = S("Trap Super Glow Glass"),
		drawtype = "glasslike_framed_optional",
		tiles = {"moreblocks_trap_super_glow_glass.png", "moreblocks_super_glow_glass_detail.png"},
		-- tiles = {"moreblocks_trap_super_glow_glass.png"},
		paramtype = "light",
		sunlight_propagates = true,
		light_source = 14,
		walkable = false,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
		no_stairs = true,
	},
	["rope"] = {
		description = S("Rope"),
		drawtype = "signlike",
		inventory_image = "moreblocks_rope.png",
		wield_image = "moreblocks_rope.png",
		paramtype = "light",
		sunlight_propagates = true,
		paramtype2 = "wallmounted",
		walkable = false,
		climbable = true,
		selection_box = {type = "wallmounted",},
		groups = {snappy = 3, flammable = 2},
		sounds = sound_leaves,
		no_stairs = true,
	},
	["copperpatina"] = {
		description = S("Copper Patina Block"),
		groups = {cracky = 1, level = 2},
		sounds = sound_metal,
	},
	["blue_tinted_glass"] = {
		description = S("Blue Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_blue1.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                -- no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},
	["cyan_tinted_glass"] = {
		description = S("Cyan Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_cyan1.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                -- no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},
	["green_tinted_glass"] = {
		description = S("Green Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_green1.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                -- no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},
	["grey_tinted_glass"] = {
		description = S("Grey Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_grey1.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                -- no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},
	["red_tinted_glass"] = {
		description = S("Red Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_red1.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                -- no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},
	["magenta_tinted_glass"] = {
		description = S("Magenta Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_magenta1.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                -- no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},
	["white_tinted_glass"] = {
		description = S("White Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_white1.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                -- no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},
	["yellow_tinted_glass"] = {
		description = S("Yellow Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_yellow1.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                -- no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},

	["brown_tinted_glass"] = {
		description = S("Brown Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_brown2.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},

	["dark_blue_tinted_glass"] = {
		description = S("Dark Blue Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_dark_blue2.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},

	["dark_brown_tinted_glass"] = {
		description = S("Dark Brown Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_dark_brown2.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},

	["dark_cyan_tinted_glass"] = {
		description = S("Dark Cyan Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_dark_cyan2.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},

	["dark_green_tinted_glass"] = {
		description = S("Dark Green Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_dark_green2.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},

	["dark_grey_tinted_glass"] = {
		description = S("Dark Grey Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_dark_grey2.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},

	["dark_magenta_tinted_glass"] = {
		description = S("Dark Magenta Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_dark_magenta2.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},

	["dark_orange_tinted_glass"] = {
		description = S("Dark Orange Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_dark_orange2.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},

	["dark_pink_tinted_glass"] = {
		description = S("Dark Pink Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_dark_pink2.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},

	["dark_red_tinted_glass"] = {
		description = S("Dark Red Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_dark_red2.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},

	["dark_violet_tinted_glass"] = {
		description = S("Dark Violet Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_dark_violet2.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},

	["dark_yellow_tinted_glass"] = {
		description = S("Dark Yellow Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_dark_yellow2.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},

	["orange_tinted_glass"] = {
		description = S("Orange Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_orange2.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},

	["pink_tinted_glass"] = {
		description = S("Pink Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_pink2.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},

	["violet_tinted_glass"] = {
		description = S("Violet Tinted Glass"),
		drawtype = "glasslike_framed_optional",
                tiles = {"moreblocks_violet2.png^moreblocks_clean_glass.png"},
                one_texture = true,
                use_texture_alpha = true,
		paramtype = "light",
                no_stairs = true,
		sunlight_propagates = true,
		groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
		sounds = sound_glass,
	},



	["gravel_stonebrick"] = {
           description = S("Gravel on Stonebrick"),
           tiles = {"default_gravel.png",
              "default_stone_brick.png",
              "default_gravel.png^[lowpart:50:default_stone_brick.png",
              "default_gravel.png^[lowpart:50:default_stone_brick.png",
              "default_gravel.png^[lowpart:50:default_stone_brick.png",
              "default_gravel.png^[lowpart:50:default_stone_brick.png"},
           no_stairs = true;
           groups = {cracky = 3},
           sounds = sound_gravel,
	},
	["gravel_slope"] = {
           description = S("Gravel Slope"),
           tiles = { "default_gravel.png" } ,
           no_stairs = true,
           groups = {crumbly = 2, falling_node = 1, not_blocking_trains = 1},
           sounds = sound_gravel,
           drawtype = "mesh", 
           mesh = "moreblocks_slope.obj",
           collision_box = box_slope,
           selection_box = box_slope,
           sunlight_propagates = false,
           light_source = 0,
           paramtype = "light",
           paramtype2 = "facedir",      -- neu
           on_rotate = screwdriver.rotate_simple ,   -- neu
           is_ground_content = false,   --neu
           -- buildable_to = true;
	},

	["gravel_slope_2a"] = {
           description = S("Gravel Slope 2a"),
           tiles = { "default_gravel.png" } ,
           no_stairs = true,
           groups = {crumbly = 2, falling_node = 1, not_blocking_trains = 1},
           sounds = sound_gravel,
           drawtype = "mesh", 
           mesh = "moreblocks_slope_half.obj",
           collision_box = box_slope_half,
           selection_box = box_slope_half,
           sunlight_propagates = false,
           light_source = 0,
           paramtype = "light",
           paramtype2 = "facedir",      -- neu
           on_rotate = screwdriver.rotate_simple ,   -- neu
           is_ground_content = false,   --neu
           -- buildable_to = true;
	},

	["gravel_slope_2b"] = {
           description = S("Gravel Slope 2b"),
           tiles = { "default_gravel.png" } ,
           no_stairs = true,
           groups = {crumbly = 2, falling_node = 1, not_blocking_trains = 1},
           sounds = sound_gravel,
           drawtype = "mesh", 
           mesh = "moreblocks_slope_half_raised.obj",
           collision_box = box_slope_half_raised,
           selection_box = box_slope_half_raised,
           sunlight_propagates = false,
           light_source = 0,
           paramtype = "light",
           paramtype2 = "facedir",      -- neu
           on_rotate = screwdriver.rotate_simple ,   -- neu
           is_ground_content = false,   --neu
           -- buildable_to = true;
	},


	["gravel_slope_3a"] = {
           description = S("Gravel Slope 3a"),
           tiles = { "default_gravel.png" } ,
           no_stairs = true,
           groups = {crumbly = 2, falling_node = 1, not_blocking_trains = 1},
           sounds = sound_gravel,
           drawtype = "mesh", 
           mesh = "moreblocks_slope_third.obj",
           collision_box = box_slope_third,
           selection_box = box_slope_third,
           sunlight_propagates = false,
           light_source = 0,
           paramtype = "light",
           paramtype2 = "facedir",      -- neu
           on_rotate = screwdriver.rotate_simple ,   -- neu
           is_ground_content = false,   --neu
           -- buildable_to = true;
	},

	["gravel_slope_3b"] = {
           description = S("Gravel Slope 3b"),
           tiles = { "default_gravel.png" } ,
           no_stairs = true,
           groups = {crumbly = 2, falling_node = 1, not_blocking_trains = 1},
           sounds = sound_gravel,
           drawtype = "mesh", 
           mesh = "moreblocks_slope_third_raised.obj",
           collision_box = box_slope_third_raised,
           selection_box = box_slope_third_raised,
           sunlight_propagates = false,
           light_source = 0,
           paramtype = "light",
           paramtype2 = "facedir",      -- neu
           on_rotate = screwdriver.rotate_simple ,   -- neu
           is_ground_content = false,   --neu
           -- buildable_to = true;
	},

	["gravel_slope_3c"] = {
           description = S("Gravel Slope 3c"),
           tiles = { "default_gravel.png" } ,
           no_stairs = true,
           groups = {crumbly = 2, falling_node = 1, not_blocking_trains = 1},
           sounds = sound_gravel,
           drawtype = "mesh", 
           mesh = "moreblocks_slope_third_top.obj",
           collision_box = box_slope_third_top,
           selection_box = box_slope_third_top,
           sunlight_propagates = false,
           light_source = 0,
           paramtype = "light",
           paramtype2 = "facedir",      -- neu
           on_rotate = screwdriver.rotate_simple ,   -- neu
           is_ground_content = false,   --neu
           -- buildable_to = true;
	},



}

if minetest.get_modpath("ethereal") then
    nodes["all_faces_mushroom_tree"] =  {
                description = S("All-faces Mushroom Tree"),
                tiles = {"mushroom_trunk_top.png"},
                groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
                sounds = sound_wood,
                furnace_burntime = 22,
             }
end


for name, def in pairs(nodes) do
	def.tiles = def.tiles or {"moreblocks_" ..name.. ".png"}
	minetest.register_node("moreblocks:" ..name, def)
	minetest.register_alias(name, "moreblocks:" ..name)
	if not def.no_stairs then
		local groups = {}
                temp_tiles = def.tiles
                if def.one_texture then
                   temp_tiles = { def.tiles[1]}
                end
		for k, v in pairs(def.groups) do groups[k] = v end
		stairsplus:register_all("moreblocks", name, "moreblocks:" ..name, {
			description = def.description,
			groups = groups,
			tiles = temp_tiles,
			sunlight_propagates = def.sunlight_propagates,
			light_source = def.light_source,
			sounds = def.sounds,
                        use_texture_alpha = def.use_texture_alpha
		})
	end
end


-- Items

minetest.register_craftitem("moreblocks:sweeper", {
	description = S("Sweeper"),
	inventory_image = "moreblocks_sweeper.png",
})

minetest.register_craftitem("moreblocks:nothing", {
	inventory_image = "invisible.png",
	on_use = function() end,
})














