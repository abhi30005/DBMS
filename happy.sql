SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
  num NUMBER;  
  digit  NUMBER;  
  digit_square_sum NUMBER;
  temp NUMBER;
BEGIN
  num := &num;
  temp := num;

  LOOP
    digit_square_sum := 0;
    WHILE temp > 0 LOOP
      digit := MOD(temp, 10);
      digit_square_sum := digit_square_sum + digit * digit;
      temp := TRUNC(temp / 10);
    END LOOP;

    temp := digit_square_sum;

    EXIT WHEN temp = 1 OR temp = 4;
  END LOOP;

  IF temp = 1 THEN
    DBMS_OUTPUT.PUT_LINE(num || ' is a happy number');
  ELSE
    DBMS_OUTPUT.PUT_LINE(num || ' is not a happy number');
  END IF;
END;
/
