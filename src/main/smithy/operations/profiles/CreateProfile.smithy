$version: "2"

namespace com.quri.operations.profiles

use com.quri.errors#InternalError
use com.quri.models.profiles#EmailAddress
use com.quri.models.profiles#FirstName
use com.quri.models.profiles#LastName
use com.quri.models.profiles#PhoneNumber
use com.quri.models.profiles#Profile

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
    username: String

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
    profile: Profile
}
