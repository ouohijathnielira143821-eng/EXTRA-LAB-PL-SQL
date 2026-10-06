SET SERVEROUTPUT ON;

DECLARE
    l NUMBER;
    b NUMBER;
    area NUMBER;
    perimeter NUMBER;
BEGIN
    l := &l;
    b := &b;

    area := l * b;
    perimeter := 2 * (l + b);

    DBMS_OUTPUT.PUT_LINE('Area of Rectangle = ' || area);
    DBMS_OUTPUT.PUT_LINE('Perimeter of Rectangle = ' || perimeter);
END;
/