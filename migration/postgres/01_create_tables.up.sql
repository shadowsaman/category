
    CREATE TABLE categories (
        id UUID PRIMARY KEY NOT NULL,
        name VARCHAR NOT NULL,
        parent_id UUID REFERENCES categories(id),
        photo_url VARCHAR NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
        updated_at TIMESTAMP
    );

    CREATE TABLE tovar (
        id UUID PRIMARY KEY NOT NULL,
        name VARCHAR NOT NULL,
        description VARCHAR,
        category_id UUID REFERENCES categories(id),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
        updated_at TIMESTAMP
);


