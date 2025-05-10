SET SERVEROUTPUT ON;
DECLARE
  given_number NUMBER(8);
  sum_of_digit NUMBER(8) := 0;
  rem NUMBER(8);
BEGIN
  given_number := &given_number;
  WHILE given_number > 0 LOOP
    rem := MOD(given_number, 10);
    sum_of_digit := sum_of_digit + rem;
    given_number := TRUNC(given_number / 10);
  END LOOP;
  DBMS_OUTPUT.PUT_LINE('The sum of digits is: ' || sum_of_digit);
END;
/

