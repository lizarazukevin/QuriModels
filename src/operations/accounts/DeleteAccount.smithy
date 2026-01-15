$version: "2"

namespace quri.operations.account

use quri.account#AccountId

operation DeleteAccount {
    input: DeleteAccountInput
    output: DeleteAccountOutput
}

structure DeleteAccountInput {
    @required
    accountId: AccountId
}

structure DeleteAccountOutput {
    accountId: AccountId
}