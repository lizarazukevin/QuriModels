$version: "2"

namespace com.quri.models.accounts

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