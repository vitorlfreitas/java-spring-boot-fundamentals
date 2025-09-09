USE store;

CREATE TABLE users (
    id INT AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT users_pk PRIMARY KEY (id)
);

CREATE TABLE addresses (
    id INT AUTO_INCREMENT,
    street VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    eircode VARCHAR(7) NOT NULL UNIQUE,
    user_id INT NOT NULL,
    CONSTRAINT address_pk PRIMARY KEY (id),
    CONSTRAINT addresses_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id)
);