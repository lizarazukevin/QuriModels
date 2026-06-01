$version: "2"

namespace com.quri.operations.profiles

use com.quri.models.errors#ResourceNotFoundException
use com.quri.models.users#Profile
use com.quri.models.users#ProfileId

/// Fetches a single profile by id.
@readonly
@http(method: "GET", uri: "/profiles/{id}")
operation GetProfile {
    input: GetProfileInput
    output: GetProfileOutput
    errors: [
        ResourceNotFoundException
    ]
}

@input
structure GetProfileInput {
    @required
    @httpLabel
    id: ProfileId
}

@output
structure GetProfileOutput {
    @required
    profile: Profile
}
