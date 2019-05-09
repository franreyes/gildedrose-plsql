CREATE OR REPLACE PACKAGE test_update_quality
IS

  --%suite(Update quality)

  --%beforeeach
  PROCEDURE setup;

  --%test(First test)
  PROCEDURE foo;
END test_update_quality;
