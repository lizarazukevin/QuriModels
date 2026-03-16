$version: "2"

namespace com.quri.models.profiles

/// TODO: Add more demographic inputs (gender, race, ethnicity, DOB, location)
/// Preferably in a Profile model
structure Profile {
    @required
    id: ProfileMongoId

    @required
    username: String

    @required
    firstName: FirstName

    @required
    lastName: LastName

    @required
    email: EmailAddress

    phoneNumber: PhoneNumber

    createdAt: Timestamp

    updatedAt: Timestamp
}

@pattern("^[a-f0-9]{24}$")
string ProfileMongoId

@sensitive
@pattern("^[\\w.+-]+@[\\w-]+\\.[\\w.]+$")
string EmailAddress

@sensitive
string PhoneNumber

@sensitive
string FirstName

@sensitive
string LastName
