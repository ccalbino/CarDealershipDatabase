DROP DATABASE cardealershipdatabase;

Create DATABASE cardealershipdatabase;

Use cardealershipdatabase;



Create Table
	dealerships (
    dealership_id INT PRIMARY KEY AUTO_INCREMENT
    , dealership_name VARCHAR(50)
    , address VARCHAR(50)
    , phone VARCHAR(12)
    );

Create Table
	vehicles (
    VIN VARCHAR(40) PRIMARY KEY
    , SOLD boolean
    , vehicle_year INT
    , make VARCHAR(40)
    , model VARCHAR(50)
    , vehicleType VARCHAR(50)
    , color VARCHAR(12)
    , mileage int
    , price decimal(10,2)
    );

Create Table
	inventory (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT
    , dealership_id INT
    , VIN VARCHAR(40)
    );
    
Create Table
	sales_contracts (
    contract_id INT PRIMARY KEY AUTO_INCREMENT 
    , date_of_contact VARCHAR (20)
    , VIN VARCHAR(40)
    , customer_name VARCHAR(40)
    , customer_email VARCHAR(40)
    , price decimal(10,2)
    , monthly_payment decimal(5,2)
    , FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
    );
    
    Create Table
	lease_contracts (
    contract_id INT PRIMARY KEY AUTO_INCREMENT 
    , date_of_contact VARCHAR (20)
    , VIN VARCHAR(40)
    , customer_name VARCHAR(40)
    , customer_email VARCHAR(40)
    , price decimal(10,2)
    , monthly_payment decimal(5,2)
    , lease_fee decimal(5,2)
    , expected_ending_value decimal(10,2)
    , FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
    );


    