SET SERVEROUTPUT ON;

DECLARE
    a NUMBER;
    b NUMBER;
BEGIN
    a := &a;
    b := &b;

    DBMS_OUTPUT.PUT_LINE('Addition = ' || (a + b));
    DBMS_OUTPUT.PUT_LINE('Subtraction = ' || (a - b));
    DBMS_OUTPUT.PUT_LINE('Multiplication = ' || (a * b));

    IF b != 0 THEN
        DBMS_OUTPUT.PUT_LINE('Division = ' || (a / b));
        DBMS_OUTPUT.PUT_LINE('Remainder = ' || MOD(a, b));
    ELSE
        DBMS_OUTPUT.PUT_LINE('Division by zero is not possible');
    END IF;
END;
/