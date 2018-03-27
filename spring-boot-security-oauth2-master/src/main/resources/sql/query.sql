CREATE TABLE user
(
  id       BIGINT AUTO_INCREMENT
    PRIMARY KEY,
  age      INT          NULL,
  password VARCHAR(255) NULL,
  salary   BIGINT       NULL,
  username VARCHAR(255) NULL
)
  ENGINE = InnoDB;


CREATE TABLE authority (
  name VARCHAR(50) NOT NULL PRIMARY KEY
);

CREATE TABLE user_authority (
  id BIGINT NOT NULL,
  authority VARCHAR(50) NOT NULL,
  FOREIGN KEY (id) REFERENCES user (id),
  FOREIGN KEY (authority) REFERENCES authority (name),
  UNIQUE INDEX user_authority_idx_1 (id, authority)
);


INSERT INTO authority (name) VALUES ('ROLE_USER');
INSERT INTO authority (name) VALUES ('ROLE_ADMIN');
INSERT INTO authority (name) VALUES ('ROLE_TECH');

INSERT INTO user_authority (id,authority) VALUES (2, 'ROLE_USER');
INSERT INTO user_authority (id,authority) VALUES (3, 'ROLE_TECH');
INSERT INTO user_authority (id,authority) VALUES (1, 'ROLE_ADMIN');