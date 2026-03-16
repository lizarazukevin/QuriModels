$version: "2"

namespace com.quri.operations.profiles

use com.quri.errors#ResourceNotFoundException
use com.quri.models.profiles#Profile
use com.quri.models.profiles#ProfileMongoId

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
    profileId: ProfileMongoId
}

@output
structure GetProfileOutput {
    profile: Profile
}
