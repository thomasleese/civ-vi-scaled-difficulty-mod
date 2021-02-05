-- Remove AI bonuses to combat, free boosts and unit experience.
UPDATE ModifierArguments
SET Value = 0, Extra = 0
WHERE Name = "Amount" AND ModifierId IN (
  "BARBARIAN_CAMP_GOLD_SCALING",
  "HIGH_DIFFICULTY_FREE_CIVIC_BOOSTS",
  "HIGH_DIFFICULTY_FREE_TECH_BOOSTS"
);

-- Reduce base production and gold scale from +20% to +10%.
UPDATE ModifierArguments
SET Value = 0, Extra = 10
WHERE Name = "Amount" AND ModifierId IN (
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
