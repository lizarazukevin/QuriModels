$version: "2"

namespace com.quri.operations.account

use com.quri.models.accounts#AccountId

@http(method: "DELETE", uri: "/accounts/{accountId}")
operation DeleteAccount {
    input: DeleteAccountInput
    output: DeleteAccountOutput
}

structure DeleteAccountInput {
    @required
    @httpLabel
    accountId: AccountId
}

structure DeleteAccountOutput {
    accountId: AccountId
}
