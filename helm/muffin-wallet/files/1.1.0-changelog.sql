--liquibase formatted sql

-- changeset Koshkin George:14af988c-0326-4d02-8b16-57ca8c1deae7
alter table muffin_wallet add column type varchar;
--rollback alter table muffin_wallet drop column type

--changeset Koshkin George:1d682896-3de3-48a9-9fb4-b568939abeaf
alter table muffin_transaction add column currency decimal;
--rollback alter table muffin_transaction drop column currency

--changeset Shamaev Onar:a462b751-7d36-494e-92c7-eb289a9c8422
--tagDatabase: 1.1.0
