SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
  low NUMBER := &low;
  high NUMBER := &high;
  i NUMBER;
  j NUMBER;
  is_prime BOOLEAN;
  sqrt_num NUMBER;
BEGIN
  FOR i IN low..high LOOP
    IF i > 1 THEN
      is_prime := TRUE;
      FOR j IN 2..TRUNC(SQRT(i)) LOOP
        IF MOD(i, j) = 0 THEN
          is_prime := FALSE;
          EXIT;
        END IF;
      END LOOP;
      IF is_prime THEN
        sqrt_num := SQRT(i);
        DBMS_OUTPUT.PUT_LINE(i || ' is a Prime Number. Square root: ' ||sqrt_num);
      END IF;
    END IF;
  END LOOP;
END;
/
