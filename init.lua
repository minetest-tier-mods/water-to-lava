minetest.register_lbm({
    label = "Converts all water sources into lava",
    name = "water_to_lava:water_to_lava",
    nodenames = {"group:water"},
    run_at_every_load = true,
    action = function(pos, node)
        if string.find(node.name, "flow") then
            minetest.set_node(pos, { name="default:lava_flowing" })
        else
            minetest.set_node(pos, { name="default:lava_source" })
        end
    end
})

minetest.register_alias_force("mapgen_water_source", "default:lava_source")
minetest.register_alias_force("mapgen_river_water_source", "default:lava_source")
