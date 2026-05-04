$version: "2"

namespace com.quri.models.users

use com.quri.models.mixins#Auditable
use com.quri.models.mixins#Owned
use com.quri.models.mixins#UserIdList

/// A profile object owned by signed in users.
///
/// - `username`: searchable unique identifier
/// - `firstName`: user's first name (mutable)
/// - `lastName`: user's last name (mutable)
/// - `email`: registered email (one per account)
/// - `following`: list of all users a profile is following
/// - `followers`: list of all users following this profile
/// - `middleName`: optional, user's middle name
/// - `phoneNumber`: registered phone number (owning many account)
/// - `bio`: short summary viewable on a profile
structure Profile with [Auditable, Owned] {
    @required
    id: ProfileId

    @required
    username: Username

    @required
    firstName: FirstName

    @required
    lastName: LastName

    @required
    email: EmailAddress

    following: UserIdList

    followers: UserIdList

    middleName: MiddleName

    phoneNumber: PhoneNumber

    bio: Bio

    /// Optional demographic fields
    gender: Gender

    dateOfBirth: DateOfBirth

    location: ProfileLocation
}

@sensitive
enum Gender {
    MALE
    FEMALE
    NON_BINARY
    PREFER_NOT_TO_SAY
    OTHER
}

/// ISO 8601 / RFC 5322 email address
@sensitive
string EmailAddress

/// E.164 or local-format phone number
@sensitive
string PhoneNumber

@sensitive
@length(max: 50)
string FirstName

@sensitive
@length(max: 50)
string MiddleName

@sensitive
@length(max: 50)
string LastName

/// ISO 8601 date string e.g. 1995-04-15
@sensitive
timestamp DateOfBirth

@length(min: 3, max: 30)
string Username

@length(max: 150)
string Bio

string ProfileId
