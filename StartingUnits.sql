DELETE FROM MajorStartingUnits
WHERE AiOnly = 1 AND Unit IN ("UNIT_BUILDER", "UNIT_SETTLER");
