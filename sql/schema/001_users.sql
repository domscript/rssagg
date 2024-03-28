-- +goose Up

CREATE TABLE users
(
  id          UUID PRIMARY KEY,
  name        VARCHAR(255) NOT NULL,
  -- email       VARCHAR(255) NOT NULL,
  -- password    VARCHAR(255) NOT NULL,
  created_at  TIMESTAMP NOT NULL DEFAULT NOW().UTC(),
  updated_at  TIMESTAMP NOT NULL DEFAULT NOW().UTC()
);

-- +goose Down
DROP TABLE users;