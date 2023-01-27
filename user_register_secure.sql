CREATE OR REPLACE FUNCTION user_register_secure(
    v_user_name VARCHAR, 
	v_password VARCHAR
)
	RETURNS INTEGER
AS $$
BEGIN
	IF EXISTS (SELECT FROM richelieu_french_top20000
                  WHERE password = v_password) THEN
        RAISE 'Passname = % is bad passname',v_password;
		RETURN -1;
	END IF;

    IF (REGEXP_MATCH(v_password, 
        '(?=\S{16,})(?=.*[0-9]{3,})(?=.*[a-z]{4,})(?=.*[A-Z]{4,})(?=.*[!@#$%^&*]{4,})')
       ) IS NULL THEN
       RAISE 'Incorrect content of password';
	   RETURN -1;
    END IF;
    INSERT INTO users (user_name,password_hash) 
        VALUES (v_user_name,md5(v_password));
	RETURN 1;
END;
$$ LANGUAGE plpgsql;
