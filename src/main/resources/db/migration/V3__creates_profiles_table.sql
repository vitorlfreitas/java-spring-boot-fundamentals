CREATE TABLE profiles (

    id INT NOT NULL,

    bio TEXT NULL,
    phone_number VARCHAR(32) NULL,
    date_of_birth DATE NULL,

    -- Non-null, non-negative, starts at 0
    loyalty_points INT UNSIGNED NOT NULL DEFAULT 0,

    CONSTRAINT profiles_pk PRIMARY KEY (id),
    CONSTRAINT profiles_user_id_fk
        FOREIGN KEY (id) REFERENCES users(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE

);
