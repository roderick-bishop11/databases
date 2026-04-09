-- create a person
CREATE TABLE person (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL,
    home_addr VARCHAR(255),                       
    personal_details JSON,  
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    --                                          
);

-- create trigger
CREATE TRIGGER updated_at_trigger
BEFORE UPDATE ON person
FOR EACH ROW
SET NEW.updated_at = CURRENT_TIMESTAMP;
