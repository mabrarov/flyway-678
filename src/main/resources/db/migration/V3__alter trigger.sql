ALTER TRIGGER CUSTOMER_INSERT ON CUSTOMER AFTER
INSERT AS
BEGIN
    SELECT TOP 1 1 FROM CUSTOMER WHERE [name] LIKE'%test';
END
GO
