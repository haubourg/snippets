CREATE FUNCTION check_password(uname TEXT, pass TEXT)

RETURNS BOOLEAN AS $$
DECLARE passed BOOLEAN;
BEGIN
SELECT  (pwd = $2) INTO passed
FROM    pwds
WHERE   username = $1;

RETURN passed;
END;
$$  LANGUAGE plpgsql
SECURITY DEFINER


COMMENT ON FUNCTION check_password(text,text) IS 'Fonction de ...';