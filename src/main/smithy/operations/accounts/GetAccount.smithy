$version: "2"

namespace com.quri.operations.account

use com.quri.models.accounts#Account
use com.quri.models.accounts#AccountId

@readonly
@http(method: "GET", uri: "/accounts/{accountId}")
operation GetAccount {
    input: GetAccountInput
    output: GetAccountOutput
}

structure GetAccountInput {
    @required
    @httpLabel
    accountId: AccountId
}

structure GetAccountOutput {
    account: Account
}
