$version: "2"

namespace quri.operations.account

use quri.account#Account
use quri.account#AccountId

operation GetAccount {
    input: GetAccountInput
    output: GetAccountOutput
}

structure GetAccountInput {
    @required
    accountId: AccountId
}

structure GetAccountOutput {
    account: Account
}