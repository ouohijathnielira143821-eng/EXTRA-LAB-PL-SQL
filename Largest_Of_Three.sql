SET SERVEROUTPUT ON;

DECLARE
    a NUMBER;
    b NUMBER;
    c NUMBER;
BEGIN
    a := &a;
    b := &b;
    c := &c;

    IF a >= b AND a >= c THEN
        DBMS_OUTPUT.PUT_LINE('Largest Number = ' || a);
    ELSIF b >= a AND b >= c THEN
        DBMS_OUTPUT.PUT_LINE('Largest Number = ' || b);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Largest Number = ' || c);
    END IF;
END;
/