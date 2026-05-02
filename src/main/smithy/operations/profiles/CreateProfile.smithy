$version: "2"

namespace com.quri.operations.profiles

use com.quri.models.users#EmailAddress
use com.quri.models.users#FirstName
use com.quri.models.users#LastName
use com.quri.models.users#PhoneNumber
use com.quri.models.users#Profile
use com.quri.models.users#Username

/// Creates a new user profile.
@http(method: "POST", uri: "/profiles")
operation CreateProfile {
    input: CreateProfileInput
    output: CreateProfileOutput
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
