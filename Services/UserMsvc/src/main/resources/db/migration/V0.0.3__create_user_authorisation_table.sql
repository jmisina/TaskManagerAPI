CREATE TABLE user_authorisation (
                                    id SERIAL PRIMARY KEY,
                                    user_id INT NOT NULL UNIQUE REFERENCES users(id) ON DELETE CASCADE,
                                    password_hash VARCHAR(255) NOT NULL,
                                    email VARCHAR(255) NOT NULL UNIQUE,
                                    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
                                    updated_at TIMESTAMP DEFAULT NULL
);