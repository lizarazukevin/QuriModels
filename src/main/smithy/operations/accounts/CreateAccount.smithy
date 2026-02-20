$version: "2"

namespace com.quri.operations.accounts

use com.quri.models.accounts#Account
use com.quri.models.accounts#EmailAddress
use com.quri.models.accounts#PhoneNumber

@http(method: "POST", uri: "/accounts")
operation CreateAccount {
    input: CreateAccountInput
    output: CreateAccountOutput
}

structure CreateAccountInput {
    @required
    username: String

    @required
    firstName: String

    @required
    lastName: String

    @required
    email: EmailAddress

    phoneNumber: PhoneNumber
}

structure CreateAccountOutput {
    account: Account
}
