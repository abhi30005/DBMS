-- inverting a number 8975 to 5798.
SET SERVEROUTPUT ON; 
DECLARE 
given_number varchar(5) := '5639'; 
str_length number(2); 
inverted_number varchar(5); 
BEGIN 
str_length := length(given_number); 
FOR cntr IN REVERSE l..str_length 
LOOP 
inverted_number := inverted_number || substr(given_number, cntr, I); 
END LOOP; 
dbms_output.put_line ('The Given number is' || given_number); 
dbms_output.put_line (‘The Invertednumberis' || inverted_number); 
END; 