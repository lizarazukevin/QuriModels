$version: "2"

namespace com.quri.operations.account

use com.quri.models.accounts#Account

@readonly
@http(method: "GET", uri: "/accounts", code: 200)
operation ListAccounts {
    output: ListAccountsOutput
}

list AccountList {
    member: Account
}

structure ListAccountsOutput {
    accounts: AccountList
}