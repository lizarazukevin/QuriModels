$version: "2"

namespace quri.account

/// TODO: Add more demographic inputs (gender, race, ethnicity, DOB, location)
/// Preferably in a Profile model

structure Account {
    @required
    accountId: AccountId

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

string AccountId
string EmailAddress
string PhoneNumber