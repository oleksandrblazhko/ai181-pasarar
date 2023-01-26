CREATE OR REPLACE FUNCTION get_data(student_name VARCHAR)
RETURNS TABLE
    (s_id INTEGER, stud_name VARCHAR, kurs INTEGER)
AS $$
DECLARE
	str VARCHAR;
BEGIN
	str := ''SELECT s_id, stud_name, kurs from public.student where name = ''' || student_name || ''''; 
	RAISE NOTICE 'Query=%',str;
	RETURN QUERY EXECUTE str;
END;
$$ LANGUAGE plpgsql;
