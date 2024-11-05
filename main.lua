
--[[ innitialising a table called rooms with details about each room.
each room is represented by a key which has its own table with
attributes specific to that room.
--]]

local rooms = {
    forest = {
        description = function(room)
            if room.visited then 
                return "You are back in the dark forest. Paths seem familiar now."
            else
                room.visited = true
                return "You enter the dark forest for the first time. Paths lead north and east."
            end
        end,

        items = {"stick", "key"},
        directions = {north = "cave", east = "lake"},
        visited = false,
        npcs = {},
        isLocked = false
    },

    cave = {
        description = function(room)
            if room.visited then
                return "You are back in the cave. paths seem familiar now."
            else
                room.visited = true
                return "You entered the damp, echoing cave. There is a faint light to the South."
            end
        end,
        items = {"key"},
        directions = {south = "forest"},
        visited = false,
        npcs = {},
        isLocked = true
    },

    lake = {
        description = function(room)
            if room.visited then
                return "You are back by the lake with a small boat, Paths seem familiar now."

            else
                room.visited = true
                return "You are by the quiet lake with a small boat. paths lead west and north."
            end
        end,
        items = {},
        directions = {west = "forest" , north = "castle"},
        visited = false,
        npcs = {},
        isLocked = false
    },

    castle = {
        description = function(room)
            if room.visited then
                return "You are back in the abandoned castle, Paths seem famiar now."

            else
                room.visited = true
                return "You have reached an abandoned castle."
            end
        end,
        items = {"treasure"},
        directions = {},
        visited = false,
        npcs = {},
        isLocked = true
    }
}


--[[
Setting up initial game state
--]]

local player = {
    location = "forest", --where the player is currently at
    inventory = {}, --items the player finds
    health = 100,   -- player's health points
    maxHealth = 100, -- Maximum health points
    level = 1, -- player's current health
    ability = {
        strength = 10,
        agility = 8,
        intelligence = 12
    },
    equipment = {   --Equipped items
        weapon = "wooden stick",
        armor = "cloth tunic"
    },
    gold = 0,
    statusEffects = {}, --effects like "poisoned", "Boosted", --effects
    quests = {          -- active and completed quests
        active = {},
        completed = {}
    }

}