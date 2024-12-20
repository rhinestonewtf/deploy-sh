# deploy.sh

Simple shell scripts to deploy the core Rhinestone infrastructure. All deployments are permissionless so anyone can use these scripts. Available scripts include:

- `core-infra.sh`: deploys the core infra including Registry and Attester
- `safe7579.sh`: deploys the Safe7579 Adapter and Launchpad
- `testnets.sh`: deploys the testnet infra (note: this should only be done on testnets to avoid errors and security issues)

## Usage

1. Add a `.env` file based on `.env.example`
2. Run `source .env` to set the env variables (note that the `export` command in the env is required so the env variables should be `export ENV=ENV_VALUE`)
3. Run `chmod +x ./core-infra.sh` or for the relevant script
4. Run `./core-infra.sh` or for the relevant script
