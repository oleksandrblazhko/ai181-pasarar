CREATE OR REPLACE FUNCTION get_data(human_name VARCHAR, v_user_name VARCHAR, v_token VARCHAR)
RETURNS TABLE
(s_id INTEGER, stud_name VARCHAR, kurs INTEGER)
AS $$
DECLARE
str VARCHAR;
BEGIN
	CALL sso_control(v_user_name,v_token);
	str := 'SELECT s_id, stud_name, kurs from public.student where stud_name = $1';
	RAISE NOTICE 'Query=%',str;
	RETURN QUERY EXECUTE str USING human_name;
END;
$$ LANGUAGE plpgsql;
