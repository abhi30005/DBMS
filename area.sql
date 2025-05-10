CREATE TABLE areas (radius NUMBER(5), area NUMBER(14, 2)); 
SET SERVEROUTPUT ON 
DECLARE 
pi constant number(4, 2) := 3.14 ; 
radius number(5); 
area number(14, 2); 
BEGIN
radius:= 3; 
WHILE RADIUS <= 7  
LOOP 
area := pi * power(radius, 2); 
INSERT INTO areas VALUES (radius, area); 
radius := radius + 1; 
END LOOP; 
END; 
/