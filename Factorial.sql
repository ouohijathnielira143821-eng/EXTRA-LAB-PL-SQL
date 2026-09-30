SET SERVEROUTPUT ON;

DECLARE
    n NUMBER;
    i NUMBER;
    fact NUMBER := 1;
BEGIN
    n := &n;

    IF n < 0 OR n != TRUNC(n) THEN
        DBMS_OUTPUT.PUT_LINE('Enter a non-negative integer');
    ELSE
        FOR i IN 1..n LOOP
            fact := fact * i;
        END LOOP;

        DBMS_OUTPUT.PUT_LINE('Factorial = ' || fact);
    END IF;
END;
/