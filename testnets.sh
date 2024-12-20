# Check required addresses
# Safe Singleton Factory
code=$(cast code 0x914d7Fec6aaC8cd542e72Bca78B30650d45643d7 --rpc-url "$RPC_URL")
# if [ "$code" == "0x" ]; then
#     printf '%s\n' "Error: Safe Singleton Factory not deployed" >&2
#     exit 1
# fi
#
# Mock Attester
# code=$(cast code 0xa4c777199658a41688e9488c4ecbd7a2925cc23a --rpc-url "$RPC_URL")
# if [ "$code" == "0x" ]; then
#     cast send 0x914d7Fec6aaC8cd542e72Bca78B30650d45643d7 0x000000000000000000000000000000000000000000000000000000000000133760a0604052348015600f57600080fd5b5060405161084f38038061084f833981016040819052602c916035565b1515608052605c565b600060208284031215604657600080fd5b81518015158114605557600080fd5b9392505050565b6080516107ae6100a160003960008181610103015281816101550152818161028e015281816102e0015281816103320152818161038501526103d801526107ae6000f3fe6080604052600436106100865760003560e01c80638b6e59ff116100595780638b6e59ff14610125578063cb6ec82614610138578063cf629cee1461017a578063d58807fe1461018d578063f68f7e1c146101a057600080fd5b806301ffc9a71461008b57806315c7d4df146100bf57806334c85d07146100d25780637949978f146100e5575b600080fd5b34801561009757600080fd5b506100ab6100a6366004610400565b6101b3565b604051901515815260200160405180910390f35b6100ab6100cd366004610449565b6101f6565b6100ab6100e03660046104a9565b610260565b3480156100f157600080fd5b506100ab6101003660046104a9565b507f000000000000000000000000000000000000000000000000000000000000000090565b6100ab6101333660046104a9565b6102b2565b34801561014457600080fd5b506100ab6101533660046104c2565b7f000000000000000000000000000000000000000000000000000000000000000092915050565b6100ab6101883660046104c2565b610304565b6100ab61019b3660046104c2565b610357565b6100ab6101ae366004610537565b6103aa565b60006001600160e01b031982166314f0f87d60e21b14806101e457506001600160e01b0319821663b2275fa960e01b145b156101f157506001919050565b919050565b60405163945e364160e01b81526000906001600160a01b0385169063945e36419061022790869086906004016106a9565b600060405180830381600087803b15801561024157600080fd5b505af1158015610255573d6000803e3d6000fd5b505050509392505050565b6040516000907f877db9cc2f850cc572d43a33301191b2fccdcd354359e1314b922bd3b293cdad908290a1507f0000000000000000000000000000000000000000000000000000000000000000919050565b6040516000907f8bf74b0dd2927384b1b6dcc25762bb31119ff25165cbcf3b029bc3cac1895dd3908290a1507f0000000000000000000000000000000000000000000000000000000000000000919050565b6040516000907f877db9cc2f850cc572d43a33301191b2fccdcd354359e1314b922bd3b293cdad908290a1507f000000000000000000000000000000000000000000000000000000000000000092915050565b6040516000907f8bf74b0dd2927384b1b6dcc25762bb31119ff25165cbcf3b029bc3cac1895dd3908290a1507f000000000000000000000000000000000000000000000000000000000000000092915050565b6040516000907f92857d026a245b748b976c8749c4195433e19c476f1d3749eed645c1af018059908290a1507f000000000000000000000000000000000000000000000000000000000000000095945050505050565b60006020828403121561041257600080fd5b81356001600160e01b03198116811461042a57600080fd5b9392505050565b6001600160a01b038116811461044657600080fd5b50565b60008060006060848603121561045e57600080fd5b833561046981610431565b925060208401359150604084013567ffffffffffffffff81111561048c57600080fd5b84016080818703121561049e57600080fd5b809150509250925092565b600061010082840312156104bc57600080fd5b50919050565b600080602083850312156104d557600080fd5b823567ffffffffffffffff808211156104ed57600080fd5b818501915085601f83011261050157600080fd5b81358181111561051057600080fd5b8660208260081b850101111561052557600080fd5b60209290920196919550909350505050565b60008060008060006080868803121561054f57600080fd5b853561055a81610431565b9450602086013561056a81610431565b9350604086013567ffffffffffffffff8082111561058757600080fd5b908701906060828a03121561059b57600080fd5b909350606087013590808211156105b157600080fd5b818801915088601f8301126105c557600080fd5b8135818111156105d457600080fd5b8960208285010111156105e657600080fd5b9699959850939650602001949392505050565b81835281816020850137506000828201602090810191909152601f909101601f19169091010190565b6000808335601e1984360301811261063957600080fd5b830160208101925035905067ffffffffffffffff81111561065957600080fd5b8060051b360382131561066b57600080fd5b9250929050565b8183526000602080850194508260005b8581101561069e57813587529582019590820190600101610682565b509495945050505050565b82815260406020820152600082356106c081610431565b6001600160a01b03166040830152602083013565ffffffffffff81168082146106e857600080fd5b606084015250604083013536849003601e1901811261070657600080fd5b830160208101903567ffffffffffffffff81111561072357600080fd5b80360382131561073257600080fd5b60808085015261074660c0850182846105f9565b9150506107566060850185610622565b848303603f190160a086015261076d838284610672565b97965050505050505056fea264697066735822122043bce5386072c03a2adaa0d60f1ed9289a2b75bf6a84488f2182f1023d7bc16764736f6c634300081900330000000000000000000000000000000000000000000000000000000000000001 --rpc-url "$RPC_URL" --private-key "$PRIVATE_KEY"
# fi
# printf '\e]8;;https://contractscan.xyz/contract/0xa4c777199658a41688e9488c4ecbd7a2925cc23a\e\\Mock Attester successfully deployed\e]8;;\e\\\n'

