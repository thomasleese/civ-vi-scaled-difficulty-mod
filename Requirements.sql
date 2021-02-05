INSERT INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
("PLAYER_AT_CLASSICAL_ERA", "REQUIREMENT_PLAYER_ERA_AT_LEAST", 0),
("PLAYER_AT_MEDIEVAL_ERA", "REQUIREMENT_PLAYER_ERA_AT_LEAST", 0),
("PLAYER_AT_RENAISSANCE_ERA", "REQUIREMENT_PLAYER_ERA_AT_LEAST", 0),
("PLAYER_AT_INDUSTRIAL_ERA", "REQUIREMENT_PLAYER_ERA_AT_LEAST", 0),
("PLAYER_AT_MODERN_ERA", "REQUIREMENT_PLAYER_ERA_AT_LEAST", 0),
("PLAYER_AT_ATOMIC_ERA", "REQUIREMENT_PLAYER_ERA_AT_LEAST", 0),
("PLAYER_AT_INFO_ERA", "REQUIREMENT_PLAYER_ERA_AT_LEAST", 0),
("PLAYER_AT_FUTURE_ERA", "REQUIREMENT_PLAYER_ERA_AT_LEAST", 0);

INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
("PLAYER_AT_CLASSICAL_ERA", "EraType", "ERA_CLASSICAL"),
("PLAYER_AT_MEDIEVAL_ERA", "EraType", "ERA_MEDIEVAL"),
("PLAYER_AT_RENAISSANCE_ERA", "EraType", "ERA_RENAISSANCE"),
("PLAYER_AT_INDUSTRIAL_ERA", "EraType", "ERA_INDUSTRIAL"),
("PLAYER_AT_MODERN_ERA", "EraType", "ERA_MODERN"),
("PLAYER_AT_ATOMIC_ERA", "EraType", "ERA_ATOMIC"),
("PLAYER_AT_INFO_ERA", "EraType", "ERA_INFORMATION"),
("PLAYER_AT_FUTURE_ERA", "EraType", "ERA_FUTURE");

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
("HIGH_DIFFICULTY_AI_CLASSICAL", "REQUIREMENTSET_TEST_ALL"),
("HIGH_DIFFICULTY_AI_MEDIEVAL", "REQUIREMENTSET_TEST_ALL"),
("HIGH_DIFFICULTY_AI_RENAISSANCE", "REQUIREMENTSET_TEST_ALL"),
("HIGH_DIFFICULTY_AI_INDUSTRIAL", "REQUIREMENTSET_TEST_ALL"),
("HIGH_DIFFICULTY_AI_MODERN", "REQUIREMENTSET_TEST_ALL"),
("HIGH_DIFFICULTY_AI_ATOMIC", "REQUIREMENTSET_TEST_ALL"),
("HIGH_DIFFICULTY_AI_INFO", "REQUIREMENTSET_TEST_ALL"),
("HIGH_DIFFICULTY_AI_FUTURE", "REQUIREMENTSET_TEST_ALL");

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
("HIGH_DIFFICULTY_AI_CLASSICAL", "REQUIRES_PLAYER_IS_AI"),
("HIGH_DIFFICULTY_AI_CLASSICAL", "REQUIRES_HIGH_DIFFICULTY"),
("HIGH_DIFFICULTY_AI_CLASSICAL", "PLAYER_AT_CLASSICAL_ERA"),
("HIGH_DIFFICULTY_AI_MEDIEVAL", "REQUIRES_PLAYER_IS_AI"),
("HIGH_DIFFICULTY_AI_MEDIEVAL", "REQUIRES_HIGH_DIFFICULTY"),
("HIGH_DIFFICULTY_AI_MEDIEVAL", "PLAYER_AT_MEDIEVAL_ERA"),
("HIGH_DIFFICULTY_AI_RENAISSANCE", "REQUIRES_PLAYER_IS_AI"),
("HIGH_DIFFICULTY_AI_RENAISSANCE", "REQUIRES_HIGH_DIFFICULTY"),
("HIGH_DIFFICULTY_AI_RENAISSANCE", "PLAYER_AT_RENAISSANCE_ERA"),
("HIGH_DIFFICULTY_AI_INDUSTRIAL", "REQUIRES_PLAYER_IS_AI"),
("HIGH_DIFFICULTY_AI_INDUSTRIAL", "REQUIRES_HIGH_DIFFICULTY"),
("HIGH_DIFFICULTY_AI_INDUSTRIAL", "PLAYER_AT_INDUSTRIAL_ERA"),
("HIGH_DIFFICULTY_AI_MODERN", "REQUIRES_PLAYER_IS_AI"),
("HIGH_DIFFICULTY_AI_MODERN", "REQUIRES_HIGH_DIFFICULTY"),
("HIGH_DIFFICULTY_AI_MODERN", "PLAYER_AT_MODERN_ERA"),
("HIGH_DIFFICULTY_AI_ATOMIC", "REQUIRES_PLAYER_IS_AI"),
("HIGH_DIFFICULTY_AI_ATOMIC", "REQUIRES_HIGH_DIFFICULTY"),
("HIGH_DIFFICULTY_AI_ATOMIC", "PLAYER_AT_ATOMIC_ERA"),
("HIGH_DIFFICULTY_AI_INFO", "REQUIRES_PLAYER_IS_AI"),
("HIGH_DIFFICULTY_AI_INFO", "REQUIRES_HIGH_DIFFICULTY"),
("HIGH_DIFFICULTY_AI_INFO", "PLAYER_AT_INFO_ERA"),
("HIGH_DIFFICULTY_AI_FUTURE", "REQUIRES_PLAYER_IS_AI"),
("HIGH_DIFFICULTY_AI_FUTURE", "REQUIRES_HIGH_DIFFICULTY"),
("HIGH_DIFFICULTY_AI_FUTURE", "PLAYER_AT_FUTURE_ERA");
