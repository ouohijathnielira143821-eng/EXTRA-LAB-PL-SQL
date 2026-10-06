SET SERVEROUTPUT ON;

DECLARE
    n NUMBER;
    i NUMBER;
    total NUMBER := 0;
BEGIN
    n := &n;

    FOR i IN 1..n LOOP
        total := total + i;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Sum = ' || total);
END;
/