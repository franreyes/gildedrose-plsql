CREATE OR REPLACE PACKAGE BODY test_update_quality
IS

  PROCEDURE setup IS
  BEGIN
    DELETE FROM item;
  END;

  PROCEDURE foo
  IS
    l_name item.name%TYPE;
  BEGIN
    new_item('any_product', 0, 0);

    update_quality();

    SELECT name INTO l_name FROM item;
    ut.expect(l_name).to_equal('fixme');
  END foo;

END test_update_quality;