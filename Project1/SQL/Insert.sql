-- SELECT * FROM information_schema.tables
-- WHERE table_schema = 'project';
INSERT INTO CONTACT (Fname, Mname, Lname)
VALUES ('John', NULL, 'Dow');
set @cid := last_insert_id();
INSERT INTO ADDRESS (Contact_id, Address_type, Address, City, State, Zip)
VALUES (
        @cid,
        'Home',
        '100 Treasure Rd',
        'New York',
        'NY',
        '10001'
    );
INSERT INTO PHONE (Contact_id, Phone_type, Area_code, Phone_Number)
VALUES (@cid, 'Work', '123', '1234567890');
INSERT INTO DATES (Contact_id, Date_type, Date_value)
VALUES (@cid, 'Birthday', '2000-01-01');