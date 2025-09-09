CREATE TABLE users_tags (

    user_id INT NOT NULL,
    tag_id  INT NOT NULL,

    CONSTRAINT users_tags_pk PRIMARY KEY (user_id, tag_id),

    CONSTRAINT users_tags_user_fk
        FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE ON UPDATE CASCADE,

    CONSTRAINT users_tags_tag_fk
        FOREIGN KEY (tag_id) REFERENCES tags(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX idx_users_tags_tag_id ON users_tags (tag_id);
