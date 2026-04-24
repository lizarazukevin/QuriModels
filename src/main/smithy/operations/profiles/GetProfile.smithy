$version: "2"

namespace com.quri.operations.profiles

use com.quri.models.errors#ResourceNotFoundException
use com.quri.models.mixins#MongoId
use com.quri.models.profiles#Profile

/// Fetches a single profile by id.
@readonly
@http(method: "GET", uri: "/profiles/{profileId}")
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
    profileId: MongoId
}

@output
structure GetProfileOutput {
    @required
    profile: Profile
}
