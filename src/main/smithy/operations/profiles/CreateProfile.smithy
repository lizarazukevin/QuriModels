$version: "2"

namespace com.quri.operations.profiles

use com.quri.errors#InternalError
use com.quri.models.profiles#EmailAddress
use com.quri.models.profiles#FirstName
use com.quri.models.profiles#LastName
use com.quri.models.profiles#PhoneNumber
use com.quri.models.profiles#Profile
use com.quri.models.profiles#Username

/// Creates a new user profile.
/// `username` should be validated for uniqueness at the service layer before persist.
@http(method: "POST", uri: "/profiles")
operation CreateProfile {
    input: CreateProfileInput
    output: CreateProfileOutput
    errors: [
        InternalError
    ]
}

@input
structure CreateProfileInput {
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

@output
structure CreateProfileOutput {
    @required
    profile: Profile
}
