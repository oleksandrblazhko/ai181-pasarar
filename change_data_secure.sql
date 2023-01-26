CREATE OR REPLACE FUNCTION change_data(stud_name VARCHAR, kurs INTEGER)
RETURNS INTEGER
AS $$
DECLARE
	str VARCHAR;
BEGIN
	str := 'UPDATE public.student SET kurs = $1 where stud_name = $2';
	RAISE NOTICE 'Query=%', str;
    EXECUTE str USING stud_name, kurs;
	RETURN kurs;
END;
$$ LANGUAGE plpgsql;
