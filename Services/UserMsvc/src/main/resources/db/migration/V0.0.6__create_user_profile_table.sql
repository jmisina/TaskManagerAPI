-- Create user_profiles table
CREATE TABLE user_profiles (
                               id SERIAL PRIMARY KEY,
                               user_id INT NOT NULL UNIQUE REFERENCES users(id) ON DELETE CASCADE,
                               first_name VARCHAR(50) NOT NULL,
                               last_name VARCHAR(50) NOT NULL,
                               phone VARCHAR(20) DEFAULT NULL,
                               created_at TIMESTAMP NOT NULL DEFAULT NOW(),
                               updated_at TIMESTAMP DEFAULT NULL
);