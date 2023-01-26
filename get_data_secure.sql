CREATE OR REPLACE FUNCTION get_data_secure(student_name VARCHAR)
RETURNS TABLE
(s_id INTEGER, stud_name VARCHAR, kurs INTEGER)
AS $$
DECLARE
str VARCHAR;
BEGIN
  str := 'SELECT s_id, stud_name, kurs from public.student where stud_name = $1';
  RAISE NOTICE 'Query=%',str;
  RETURN QUERY EXECUTE str USING student_name;
END;
$$ LANGUAGE plpgsql;
