CREATE OR REPLACE FUNCTION get_data(v_real_name VARCHAR, v_user_name VARCHAR, v_token VARCHAR)
RETURNS TABLE
    (p_id INTEGER, name VARCHAR, bd DATE)
AS $$
DECLARE
	str VARCHAR;
BEGIN
	CALL sso_control(v_user_name,v_token);
	str := 'SELECT p_id, name, bd from public.human where name = $1';
    	RAISE NOTICE 'Query=%',str;
	RETURN QUERY EXECUTE str USING v_real_name
END;
$$ LANGUAGE plpgsql;
