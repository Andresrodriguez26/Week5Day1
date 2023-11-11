ALTER TABLE car
ADD COLUMN is_serviced BOOLEAN DEFAULT False;

SELECT *
FROM car;

CREATE PROCEDURE were_serviced()
LANGUAGE plpgsql
AS $$
	BEGIN
		UPDATE car
		SET is_serviced = True
		WHERE serialnumber_id IN (
        	SELECT serialnumber_id
			FROM service	
);
		COMMIT;
	END;
$$

CALL were_serviced()

SELECT *
FROM car;

