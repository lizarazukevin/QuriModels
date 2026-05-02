$version: "2"

namespace com.quri.models.users

use com.quri.models.mixins#Auditable
use com.quri.models.mixins#Owned

/// A profile object owned by signed in users.
///
/// - `username`: searchable unique identifier
/// - `firstName`: user's first name (mutable)
/// - `lastName`: user's last name (mutable)
/// - `email`: registered email (one per account)
/// - `phoneNumber`: registered phone number (many across account)
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

    phoneNumber: PhoneNumber
}

/// ISO 8601 / RFC 5322 email address.
@sensitive
@pattern("^[\\w.+-]+@[\\w-]+\\.[\\w.]+$")
string EmailAddress

/// E.164 or local-format phone number. Unvalidated beyond type — normalization
/// handled at the service layer.
@sensitive
string PhoneNumber

@sensitive
string FirstName

@sensitive
string LastName

@length(min: 3, max: 32)
@pattern("^[a-zA-Z0-9_.-]+$")
string Username

string ProfileId
