CREATE TABLE addresses (
                           id SERIAL PRIMARY KEY,
                           user_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
                           address_type VARCHAR(20) NOT NULL CHECK (address_type IN ('billing', 'shipping')),
                           city VARCHAR(50) NOT NULL,
                           postal_code VARCHAR(20) NOT NULL,
                           country VARCHAR(50) NOT NULL
);