$version: "2"

namespace com.quri.operations.profiles

use com.quri.errors#InternalError
use com.quri.models.profiles#EmailAddress
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

structure CreateProfileInput {
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

structure CreateProfileOutput {
    profile: Profile
}
