-- Create Customer table
CREATE TABLE Customer (
  Phone_Number CHAR(10) PRIMARY KEY,
  Email VARCHAR2(50) UNIQUE,
  Name VARCHAR2(10),
  Address VARCHAR2(20)
);

-- Create Driver table
CREATE TABLE Driver (
  Phone_Number CHAR(10) PRIMARY KEY,
  FirstN VARCHAR2(30) NOT NULL,
  LastN VARCHAR2(30) NOT NULL,
  DOB DATE,
  Vehicle_Info VARCHAR2(50)
);

-- Create Rating table
CREATE TABLE Rating (
    Phone_Number CHAR(10),
    D_Phone_No CHAR(10) NOT NULL,
    Feedback_Timestamp DATE,
    Rate NUMBER,
    "Comment" VARCHAR2(200),
    CONSTRAINT pk_rating PRIMARY KEY (Phone_Number, Feedback_Timestamp),
    CONSTRAINT fk_rating_customer FOREIGN KEY (Phone_Number) REFERENCES Customer(Phone_Number),
    CONSTRAINT fk_rating_driver FOREIGN KEY (D_Phone_No) REFERENCES Driver(Phone_Number)
);

-- Create Trip table
CREATE TABLE Trip (
  Trip_No NUMBER PRIMARY KEY,
  Phone_Number CHAR(10) NOT NULL,
  D_Phone_No CHAR(10) NOT NULL,
  Start_Point VARCHAR2(100),
  Destination VARCHAR2(100),
  Duration NUMBER,
  Date_Time DATE,
  CONSTRAINT fk_trip_customer FOREIGN KEY (Phone_Number) REFERENCES Customer(Phone_Number),
  CONSTRAINT fk_trip_driver FOREIGN KEY (D_Phone_No) REFERENCES Driver(Phone_Number)
);

-- Create Payment table
CREATE TABLE Payment (
  Payment_No NUMBER PRIMARY KEY,
  Trip_No NUMBER,
  Status VARCHAR2(50),
  Payment_Method VARCHAR2(50),
  Amount NUMBER(10,2),
  CONSTRAINT fk_payment_trip FOREIGN KEY (Trip_No) REFERENCES Trip(Trip_No)
);