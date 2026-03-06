$version: "2"

namespace com.quri.models.profiles

/// TODO: Add more demographic inputs (gender, race, ethnicity, DOB, location)
/// Preferably in a Profile model
structure Profile {
    @required
    profileId: ProfileMongoId

    @required
    username: String

    @required
    firstName: String

    @required
    lastName: String

    @required
    email: EmailAddress

    phoneNumber: PhoneNumber

    createdAt: Timestamp

    updatedAt: Timestamp
}

@pattern("^[a-f0-9]{24}$")
string ProfileMongoId

string EmailAddress

string PhoneNumber
