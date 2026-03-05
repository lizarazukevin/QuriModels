$version: "2"

namespace com.quri.models.profiles

/// TODO: Add more demographic inputs (gender, race, ethnicity, DOB, location)
/// Preferably in a Profile model
structure Profile {
    profileId: ProfileId

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

string ProfileId

string EmailAddress

string PhoneNumber
