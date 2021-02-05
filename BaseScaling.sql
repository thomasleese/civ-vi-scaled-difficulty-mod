-- Remove AI bonuses to combat, free boosts and unit experience.
UPDATE ModifierArguments
SET Value = 0, Extra = 0
WHERE Name = "Amount" AND ModifierId IN (
	"BARBARIAN_CAMP_GOLD_SCALING",
	"HIGH_DIFFICULTY_FREE_CIVIC_BOOSTS",
	"HIGH_DIFFICULTY_FREE_TECH_BOOSTS"
);

-- Create a new high difficulty scale of food.
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES
("TRAIT_LEADER_MAJOR_CIV", "HIGH_DIFFICULTY_FOOD_SCALING");
INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId) VALUES
("HIGH_DIFFICULTY_FOOD_SCALING", "MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER", "PLAYER_IS_HIGH_DIFFICULTY_AI");
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value, Extra, SecondExtra) VALUES
("HIGH_DIFFICULTY_FOOD_SCALING", "Amount", "LinearScaleFromDefaultHandicap", 0, 0, "DIFFICULTY_PRINCE");
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
("HIGH_DIFFICULTY_FOOD_SCALING", "YieldType", "YIELD_FOOD");

-- Reduce base food, production and gold scale from +20% to +10%.
UPDATE ModifierArguments
SET Value = 0, Extra = 10
WHERE Name = "Amount" AND ModifierId IN (
  "HIGH_DIFFICULTY_FOOD_SCALING",
	"HIGH_DIFFICULTY_PRODUCTION_SCALING",
	"HIGH_DIFFICULTY_GOLD_SCALING"
);

-- Reduce base science, culture and faith scale from +8% to +4%.
UPDATE ModifierArguments
SET Value = 0, Extra = 4
WHERE Name = "Amount" AND ModifierId IN (
  "HIGH_DIFFICULTY_SCIENCE_SCALING",
	"HIGH_DIFFICULTY_CULTURE_SCALING",
	"HIGH_DIFFICULTY_FAITH_SCALING"
);
