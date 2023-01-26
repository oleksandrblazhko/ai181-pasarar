CREATE OR REPLACE FUNCTION change_data(stud_name VARCHAR, kurs INTEGER)
RETURNS INTEGER
AS $$
DECLARE
	str VARCHAR;
BEGIN
	str := 'UPDATE public.student AS s SET kurs = ''' || kurs || 
    ''' where stud_name = ''' || stud_name || '''';
	RAISE NOTICE 'Query=%', str;
    EXECUTE str;
	RETURN kurs;
END;
$$ LANGUAGE plpgsql;
