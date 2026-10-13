-- ejemplo, cuando se crea un mail nuevo y el antiguo se guarda en una tabla nueva

delimiter 

CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN 
		INSERT INTO email_history(user_id, email)
        VALUES(old.USER_ID, OLD.email);
	END IF;
END;

|

delimiter;

--

UPDATE users SET email = 'diego@diego.com' WHERE user_id = 1;

