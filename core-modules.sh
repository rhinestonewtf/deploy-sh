# Check required addresses
## Rhinestone Registry
code=$(cast code 0x000000000069E2a187AEFFb852bF3cCdC95151B2 --rpc-url "$RPC_URL")
if [ "$code" == "0x" ]; then
    printf '%s\n' "Error: Rhinestone Registry not deployed" >&2
    exit 1
fi

## Ensure schema is registered
code=$(cast call 0x000000000069E2a187AEFFb852bF3cCdC95151B2 "findSchema(bytes32)" 0x93d46fcca4ef7d66a413c7bde08bb1ff14bacbd04c4069bb24cd7c21729d7bf1 --rpc-url "$RPC_URL")
registrationTime=$(echo "$code" | cut -c 67-130)
if [ "$registrationTime" == "0000000000000000000000000000000000000000000000000000000000000000" ]; then
    printf '%s\n' "Error: Schema not registered" >&2
    exit 1
fi

## Ensure resolver is registered
resolverRecord=$(cast call 0x000000000069E2a187AEFFb852bF3cCdC95151B2 "findResolver(bytes32)" 0xdbca873b13c783c0c9c6ddfc4280e505580bf6cc3dac83f8a0f7b44acaafca4f --rpc-url "$RPC_URL")
if [ "$resolverRecord" == "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" ]; then
    printf '%s\n' "Error: Resolver not registered" >&2
    exit 1
fi

# Deploy modules
