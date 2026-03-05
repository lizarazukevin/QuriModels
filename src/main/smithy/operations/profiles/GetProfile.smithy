$version: "2"

namespace com.quri.operations.profiles

use com.quri.models.profiles#Profile
use com.quri.models.profiles#ProfileId

@readonly
@http(method: "GET", uri: "/profiles/{profileId}")
operation GetProfile {
    input: GetProfileInput
    output: GetProfileOutput
}

structure GetProfileInput {
    @required
    @httpLabel
    profileId: ProfileId
}

structure GetProfileOutput {
    profile: Profile
}
