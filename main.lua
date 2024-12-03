Tattered = SMODS.current_mod

-- Definitions
Tattered.b_side_table = {}

-- API
Tattered.add_b_side = function(deck_id, b_side_id)
	Tattered.b_side_table[deck_id] = b_side_id; Tattered.b_side_table[b_side_id] = deck_id
end

-- Decks
SMODS.Back{
	name = "Tattered Red Deck",
	key = "red",
    atlas = "b_side_atlas",
	pos = {x = 0, y = 0},
	config = {b_side = true, hands = 25-4, discards = 25-3, static_plays = true},
	loc_txt = {
		name = "Tattered Red Deck",
		text ={
			"Start run with",
			"{C:blue}#1#{} hands and {C:red}#2#{} discards",
			"hands/discards reset every 8 antes",
			"Extra {C:blue}Hands{} no longer earn money",
		},
    },
	loc_vars = function(self)
        return {
            vars = { self.config.hands+4, self.config.discards+3 }
        }
	end,
	apply = function()
		G.E_MANAGER:add_event(Event({
			func = function()
				G.GAME.modifiers.no_extra_hand_money = true
				return true
			end
		}))
	end,
	omit = true
}


SMODS.Back{
	name = "Tattered Blue Deck",
	key = "blue",
    atlas = "b_side_atlas",
	pos = {x = 1, y = 0},
	config = {b_side = true},
	loc_txt = {
		name = "Tattered Blue Deck",
		text ={
			"Test Text",
		},
    },
	apply = function()
	end,
	omit = true
}

SMODS.Back{
	name = "Tattered Yellow Deck",
	key = "yellow",
    atlas = "b_side_atlas",
	pos = {x = 2, y = 0},
	config = {b_side = true, money_mult = 0.1, money_mult_min = 1.0, no_interest = true},
	loc_txt = {
		name = "Tattered Yellow Deck",
		text ={
			"Money at the end of rounds",
			"is instead converted to",
			"a multiplier where each",
			"dollar adds {C:money}#1#X${}",
			"Earn no {C:attention}Interest",
		},
    },
	loc_vars = function(self)
        return {
            vars = { self.config.money_mult }
        }
	end,
	apply = function()
	end,
	omit = true
}

SMODS.Back{
	name = "Tattered Green Deck",
	key = "green",
    atlas = "b_side_atlas",
	pos = {x = 3, y = 0},
	config = {b_side = true},
	loc_txt = {
		name = "Tattered Green Deck",
		text ={
			"Test Text",
		},
    },
	apply = function()
	end,
	omit = true
}

SMODS.Back{
	name = "Tattered Black Deck",
	key = "black",
    atlas = "b_side_atlas",
	pos = {x = 4, y = 0},
	config = {b_side = true},
	loc_txt = {
		name = "Tattered Black Deck",
		text ={
			"Test Text",
		},
    },
	apply = function()
	end,
	omit = true
}

SMODS.Back{
	name = "Tattered Magic Deck",
	key = "magic",
    atlas = "b_side_atlas",
	pos = {x = 0, y = 1},
	config = {b_side = true},
	loc_txt = {
		name = "Tattered Magic Deck",
		text ={
			"Gain 2 {C:attention}Eternal{} {C:tarot}Tarot{} cards",
			"when {C:attention}Blind{} is selected",
			"if there is no space for them,",
			"they will go into your {C:attention}Joker{} slots",
		},
    },
	apply = function()
	end,
	omit = true
}

SMODS.Back{
	name = "Tattered Nebula Deck",
	key = "nebula",
    atlas = "b_side_atlas",
	pos = {x = 1, y = 1},
	config = {b_side = true, alt_planet_levels = 2, negative_planet_levels = 1, consumables = {"c_high_priestess"}},
	loc_txt = {
		name = "Tattered Nebula Deck",
		text ={
			"Planet cards now",
			"level up hands by {C:planet}#1#{} and",
			"level down a random hand by {C:red}#2#{}",
			"start with High Priestess"
		},
    },
	loc_vars = function(self)
        return {
            vars = { self.config.alt_planet_levels, self.config.negative_planet_levels}
        }
	end,
	apply = function()
	end,
	omit = true
}

SMODS.Back{
	name = "Tattered Checkered Deck",
	key = "checkered",
    atlas = "b_side_atlas",
	pos = {x = 4, y = 1},
	config = {b_side = true},
	loc_txt = {
		name = "Tattered Checkered Deck",
		text ={
			"Start run with",
			"{C:attention}52{} {C:spades}Spades{} in deck",
			"Played card's suits are rotated",
			"{C:spades}Spades{}»{C:hearts}Hearts{}»{C:clubs}Clubs{}»{C:diamonds}Diamonds{}»{C:spades}Spades{}"
		},
    },
	apply = function()
		G.E_MANAGER:add_event(Event({
			func = function()
				for _, v in pairs(G.playing_cards) do
					v:change_suit("Spades")
				end
				return true
			end
		}))
	end,
	omit = true
}

SMODS.Back{
	name = "Tattered Zodiac Deck",
	key = "zodiac",
    atlas = "b_side_atlas",
	pos = {x = 0, y = 2},
	config = {b_side = true},
	loc_txt = {
		name = "Tattered Zodiac Deck",
		text ={
			"Test Text",
		},
    },
	apply = function()
	end,
	omit = true
}

SMODS.Back{
	name = "Tattered Anaglyph Deck",
	key = "anaglyph",
    atlas = "b_side_atlas",
	pos = {x = 2, y = 2},
	config = {b_side = true},
	loc_txt = {
		name = "Tattered Anaglyph Deck",
		text ={
			"Test Text",
		},
    },
	apply = function()
	end,
	omit = true
}

SMODS.Back{
	name = "Tattered Plasma Deck",
	key = "plasma",
    atlas = "b_side_atlas",
	pos = {x = 3, y = 2},
	config = {b_side = true},
	loc_txt = {
		name = "Tattered Plasma Deck",
		text ={
			"Test Text",
		},
    },
	apply = function()
	end,
	omit = true
}

SMODS.Back{
	name = "Tattered Erratic Deck",
	key = "erratic",
    atlas = "b_side_atlas",
	pos = {x = 4, y = 2},
	config = { b_side = true},
	omit = true,
	loc_txt = {
		name = "Tattered Erratic Deck",
		text ={
			"Test Text",
		},
    },
	apply = function()
	end,
}

SMODS.Atlas {
    key = "b_side_atlas",
    path = "b_sides.png",
    px = 71,
    py = 95
}

-- Auto add tattered decks
for _, deck in ipairs({"red", "yellow", "magic", "nebula", "checkered"}) do
	Tattered.add_b_side("b_" .. deck, "b_tattered_" .. deck)
end

local back_trigger_effect = Back.trigger_effect
function Back:trigger_effect(args) -- Append trigger effect function
	back_trigger_effect(self, args) -- Run vanilla checks
	if self.name == "Tattered Checkered Deck" and args.context == "final_scoring_step" then
		for i, card in ipairs(G.play.cards) do
			local percent = 1.15 - (i-0.999)/(#G.play.cards-0.998)*0.3
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.05,
				func = function()	
				card:flip()
				play_sound("card1", percent)
				card:juice_up(0.3, 0.3)
				return true
				end
			}))
		end
		for _, card in ipairs(G.play.cards) do
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.05,
				func = function()	
				if card.config.card.suit == "Spades" then card:change_suit("Hearts")
				elseif card.config.card.suit == "Hearts" then card:change_suit("Clubs")
				elseif card.config.card.suit == "Clubs" then card:change_suit("Diamonds")
				elseif card.config.card.suit == "Diamonds" then card:change_suit("Spades") end
				return true
				end
			}))
		end
		for i, card in ipairs(G.play.cards) do
			local percent = 1.15 - (i-0.999)/(#G.play.cards-0.998)*0.3
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.05,
				func = function()	
				card:flip()
				play_sound("card1", percent)
				card:juice_up(0.3, 0.3)
				return true
				end
			}))
		end
	end

	if self.name == "Tattered Magic Deck" and args.context == "setting_blind" then
		local added_consumables = 0
		for _ = 1, 2 do
			local area = G.consumeables
			if #area.cards + added_consumables >= area.config.card_limit then
				area = G.jokers
				if #area.cards + added_consumables >= area.config.card_limit then
					local possible_cards = {}
					for _, card in ipairs(area.cards) do 
						if card.ability.set ~= "Tarot" then
							possible_cards[#possible_cards+1] = card
						end 
					end
					if #possible_cards > 0 then
						added_consumables = added_consumables + 1
						G.E_MANAGER:add_event(Event({
							trigger = "before",
							delay = 0.25,
							func = function()
							local sliced_card = pseudorandom_element(possible_cards, pseudoseed("random_joker_kill"))
							sliced_card:start_dissolve({HEX("8835e0")}, nil, 1.6)
							play_sound('slice1', 0.96+math.random()*0.08)
							return true
							end
						}))
					else
						break
					end
				end
			end
			added_consumables = added_consumables + 1
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.15,
				func = function()	
				local card = create_card('Tarot', area)
				SMODS.Stickers["eternal"]:apply(card, true)
				card:add_to_deck()
				area:emplace(card)
				return true
				end
			}))
		end
	end
end

G.FUNCS.flip_b_sides = function ()
	play_sound("gong", 0.5,1.0)
	for _, deck_area in ipairs(Galdur.run_setup.deck_select_areas) do
		if #deck_area.cards ~= 0 then
			local card = deck_area.cards[1]
			if Tattered.b_side_table[card.config.center.key] ~= nil then
				local center = G.P_CENTERS[Tattered.b_side_table[card.config.center.key]]
				G.E_MANAGER:add_event(Event({trigger = "immediate", blockable = false, func = function() 
					play_sound("crumple1", math.random() * 0.2 + 0.5,1.0)
					for _, i in ipairs(deck_area.cards) do
						i:start_dissolve({G.C.BLACK, G.C.ORANGE, G.C.RED, G.C.GOLD, G.C.JOKER_GREY}, true, 0.5)
					end
					return true
				end }))
				for _ = 1, Galdur.config.reduce and 1 or 10 do
					G.E_MANAGER:add_event(Event({trigger = "after", blockable = false, func = function()
							local new_card = Card(deck_area.T.x, deck_area.T.y, G.CARD_W, G.CARD_H, center, center, {galdur_back = Back(center), deck_select = 1})
							new_card.deck_select_position = true -- Hack
							new_card.sprite_facing = "back"
							new_card.facing = "back"
							new_card.children.back = Sprite(card.T.x, card.T.y, card.T.w, card.T.h, G.ASSET_ATLAS[center.atlas or "centers"], center.pos)
							new_card.children.back.states.hover = card.states.hover
							new_card.children.back.states.click = card.states.click
							new_card.children.back.states.drag = card.states.drag
							new_card.children.back.states.collide.can = false
							new_card.children.back:set_role({major = new_card, role_type = "Glued", draw_major = new_card})
							deck_area:emplace(new_card)
							return true
						end
					}))
				end
			end
		end
	end
end



-- FUCKED UP PATCHES BELOW

function custom_deck_select_page_deck()
    local page = deck_select_page_deck()
	local button_area = page.nodes[1].nodes[2].nodes[1].nodes[1]

	local switch_button = {n = G.UIT.R, config={align = "cm", padding = 0.15}, nodes = {
        {n=G.UIT.R, config = {maxw = 2.5, minw = 2.5, minh = 0.8, r = 0.1, hover = true, ref_value = 1, button = "flip_b_sides", colour = Tattered.badge_colour, align = "cm", emboss = 0.1}, nodes = {
            {n=G.UIT.T, config={text = "Tattered", scale = 0.4, colour = Tattered.badge_text_colour}}
        }}
    }}

	table.insert(button_area.nodes, 1, switch_button)

	return page
end

for _, args in ipairs(Galdur.pages_to_add) do
	if args.name == "gald_select_deck" then
		args.definition = custom_deck_select_page_deck
	end
end
