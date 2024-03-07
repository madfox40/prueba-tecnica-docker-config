CREATE TABLE friends (
    friend_id SERIAL PRIMARY KEY,
    full_name VARCHAR(50)
);

CREATE TABLE bills (
    bill_id SERIAL PRIMARY KEY,
    friend_id INT REFERENCES friends(friend_id),
    amount DECIMAL(10,2) NOT NULL,
    expense_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,
    description VARCHAR(50) NOT NULL
);
