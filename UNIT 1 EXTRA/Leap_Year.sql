SET SERVEROUTPUT ON;

DECLARE
    yr NUMBER;
BEGIN
    yr := &yr;

    IF (MOD(yr, 400) = 0) OR
       (MOD(yr, 4) = 0 AND MOD(yr, 100) != 0) THEN
        DBMS_OUTPUT.PUT_LINE('Leap Year');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Not a Leap Year');
    END IF;
END;
/