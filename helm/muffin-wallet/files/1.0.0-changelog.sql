--liquibase formatted sql

-- changeset Koshkin George:f4af988c-0326-4d02-8b16-57ca8c1deae7
CREATE TABLE IF NOT EXISTS muffin_wallet (
    id UUID PRIMARY KEY,
    balance DECIMAL NOT NULL,
    owner_name VARCHAR(40) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
)
--rollback drop table maffin_wallet;

--changeset Koshkin George:ad682896-3de3-48a9-9fb4-b568939abeaf
CREATE TABLE IF NOT EXISTS muffin_transaction (
    id UUID PRIMARY KEY,
    amount DECIMAL,
    from_muffin_wallet_id UUID REFERENCES muffin_wallet(id) NOT NULL,
    to_muffin_wallet_id UUID REFERENCES muffin_wallet(id) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);
--rollback drop table maffin_transaction;

--changeset Shamaev Onar:bfb7519b-4296-4c83-90da-0b8240ffc91e
--tagDatabase: 1.0.0
