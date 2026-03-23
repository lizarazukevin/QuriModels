$version: "2"

namespace com.quri.models.profiles

use com.quri.models.mixins#Auditable
use com.quri.models.mixins#Identifiable

/// A user profile with identity and contact information.
///
/// TODO: Extend with demographic inputs (gender, race, ethnicity, DOB, location),
/// likely as a separate `Demographics` structure composed in here or linked by id.
structure Profile with [Identifiable, Auditable] {
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
/// @sensitive — excluded from logs and tracing.
@sensitive
@pattern("^[\\w.+-]+@[\\w-]+\\.[\\w.]+$")
string EmailAddress

/// E.164 or local-format phone number. Unvalidated beyond type — normalization
/// handled at the service layer.
/// @sensitive — excluded from logs and tracing.
@sensitive
string PhoneNumber

/// @sensitive — excluded from logs and tracing.
@sensitive
string FirstName

/// @sensitive — excluded from logs and tracing.
@sensitive
string LastName

@length(min: 3, max: 32)
@pattern("^[a-zA-Z0-9_.-]+$")
string Username
