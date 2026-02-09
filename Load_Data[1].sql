-- Insert values into Customer table
INSERT INTO Customer VALUES ('0551234567', 'lama@email.com', 'Lama', 'Jeddah');
INSERT INTO Customer VALUES ('0557654321', 'norah@email.com', 'Norah', 'Dammam');
INSERT INTO Customer VALUES ('0559998888', 'raneem@email.com', 'Raneem', 'Riyadh');
INSERT INTO Customer VALUES ('0551122334', 'fahad@email.com', 'Fahad', 'Tabuk');
INSERT INTO Customer VALUES ('0552233445', 'saud@email.com', 'Saud', 'Makkah');

-- Insert values into Driver table
INSERT INTO Driver VALUES ('0551112233', 'Omar', 'AlSaud', TO_DATE('1990-03-15', 'YYYY-MM-DD'), 'Toyota Camry 2020');
INSERT INTO Driver VALUES ('0552223344', 'Hassan', 'AlQahtani', TO_DATE('1988-07-20', 'YYYY-MM-DD'), 'Hyundai Sonata 2019');
INSERT INTO Driver VALUES ('0553334455', 'Layan', 'AlHarbi', TO_DATE('1995-09-11', 'YYYY-MM-DD'), 'Kia Sportage 2021');
INSERT INTO Driver VALUES ('0554445566', 'Nasser', 'AlShehri', TO_DATE('1992-12-02', 'YYYY-MM-DD'), 'Honda Civic 2018');
INSERT INTO Driver VALUES ('0555556677', 'Faisal', 'AlMutairi', TO_DATE('1998-05-25', 'YYYY-MM-DD'), 'Nissan Altima 2022');

-- Insert values into Rating table
INSERT INTO Rating VALUES ('0551234567', '0551112233', TO_DATE('2025-10-01', 'YYYY-MM-DD'), 5, 'Excellent service');
INSERT INTO Rating VALUES ('0557654321', '0552223344', TO_DATE('2025-10-02', 'YYYY-MM-DD'), 4, 'Very polite driver');
INSERT INTO Rating VALUES ('0559998888', '0553334455', TO_DATE('2025-10-03', 'YYYY-MM-DD'), 3, 'Average trip');
INSERT INTO Rating VALUES ('0551122334', '0554445566', TO_DATE('2025-10-04', 'YYYY-MM-DD'), 2, 'Driver was late');
INSERT INTO Rating VALUES ('0552233445', '0555556677', TO_DATE('2025-10-05', 'YYYY-MM-DD'), 5, 'Perfect ride');

-- Insert values into Trip table
INSERT INTO Trip VALUES (1, '0551234567', '0551112233', 'Jeddah - AlBalad', 'Jeddah - Corniche', 20, TO_DATE('2025-10-01', 'YYYY-MM-DD'));
INSERT INTO Trip VALUES (2, '0557654321', '0552223344', 'Dammam - Airport', 'Dammam - Corniche', 25, TO_DATE('2025-10-02', 'YYYY-MM-DD'));
INSERT INTO Trip VALUES (3, '0559998888', '0553334455', 'Riyadh - Nakheel', 'Riyadh - Olaya', 18, TO_DATE('2025-10-03', 'YYYY-MM-DD'));
INSERT INTO Trip VALUES (4, '0551122334', '0554445566', 'Tabuk - Center', 'Tabuk - Hospital', 30, TO_DATE('2025-10-04', 'YYYY-MM-DD'));
INSERT INTO Trip VALUES (5, '0552233445', '0555556677', 'Makkah - Haram', 'Makkah - Aziziya', 22, TO_DATE('2025-10-05', 'YYYY-MM-DD'));

-- Insert values into Payment table
INSERT INTO Payment VALUES (1 , 1 , 'Completed' , 'Credit Card' , 150.00);
INSERT INTO Payment VALUES (2 , 2 , 'Pending' , 'Apple Pay' , 75.00);
INSERT INTO Payment VALUES (3 , 3 , 'Completed' , 'Cash' , 100.75);
INSERT INTO Payment VALUES (4 , 4 , 'Failed' , 'Apple Pay' , 120.50);
INSERT INTO Payment VALUES (5 , 5 , 'Completed' , 'Credit Card' , 180.25);