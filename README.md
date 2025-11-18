# Muffin wallet

## Changelog

Disabled liquibase at application.yaml properties.
Set liquibase via hooks.

## Tutorial

All helm charts contained at `helm` folder.

You have to set up proper db properties at `values.yaml` files.

You can setup both charts via (being in `helm` folder):
- `helm install muffin-currency ./muffin-currency`
- `helm install muffin-wallet ./muffin-wallet`
