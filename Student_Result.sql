SET SERVEROUTPUT ON;

DECLARE
    v_sid STUDENT.SID%TYPE;
    v_name STUDENT.SNAME%TYPE;
    v_m1 STUDENT.M1%TYPE;
    v_m2 STUDENT.M2%TYPE;
    v_m3 STUDENT.M3%TYPE;
    v_total NUMBER;
    v_percentage NUMBER;

BEGIN
    v_sid := &sid;

    SELECT SNAME, M1, M2, M3
    INTO v_name, v_m1, v_m2, v_m3
    FROM STUDENT
    WHERE SID = v_sid;

    v_total := v_m1 + v_m2 + v_m3;

    v_percentage := (v_total / 300) * 100;

    DBMS_OUTPUT.PUT_LINE('Student Name = ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Total Marks = ' || v_total);
    DBMS_OUTPUT.PUT_LINE('Percentage = ' || ROUND(v_percentage, 2) || '%');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Student ID not found');
END;
/