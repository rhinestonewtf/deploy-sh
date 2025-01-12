# deploy.sh

Simple shell scripts to deploy the core Rhinestone infrastructure. All deployments are permissionless so anyone can use these scripts. Available scripts include:

- `core-infra.sh`: deploys the core infra including Registry and Attester
- `safe7579.sh`: deploys the Safe7579 Adapter and Launchpad
- `core-modules.sh`: deploys all the core modules including smart sessions
- `testnets.sh`: deploys the testnet infra (note: this should only be done on testnets to avoid errors and security issues)
- `misc.sh`: deploys various miscellaneous contracts

## Usage

1. Add a `.env` file based on `.env.example`
2. Run `source .env` to set the env variables (note that the `export` command in the env is required so the env variables should be `export ENV=ENV_VALUE`)
3. Run `chmod +x ./core-infra.sh` or for the relevant script
4. Run `./core-infra.sh NETWORK` or for the relevant script, if one or multiple networks aren't supplied then this will run against all networks in [`networks.txt`](https://github.com/rhinestonewtf/constants/blob/main/networks.txt)

## Rhinestone deployment process

All our contract deployments are permissionless and can be done by anyone. However, some initialization actions need to be made and are security critical, so these need to be made by us. Our process is as follows:

1. Deploy core infra
2. Deploy safe7579
3. **On testnets only**: deploy testnet contracts
4. Register schema and resolver on Registry [Rhinestone-only action]
5. Deploy core modules
6. Attest to core modules [Rhinestone-only action]
7. **On testnets only**: upgrade schema and resolver for mock attester [Rhinestone-only action]
