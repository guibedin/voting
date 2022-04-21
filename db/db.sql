CREATE TABLE polls (
    poll_id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    is_active BOOLEAN NOT NULL,
    created_on TIMESTAMP NOT NULL
);

CREATE TABLE options (
    option_id SERIAL PRIMARY KEY,
    poll_id INT NOT NULL,
    title TEXT NOT NULL,
    votes INT NOT NULL,
    FOREIGN KEY (poll_id) REFERENCES polls (poll_id)
);