$version: "2"

namespace quri.operations.account

use quri.account#Account
use quri.account#EmailAddress
use quri.account#PhoneNumber

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