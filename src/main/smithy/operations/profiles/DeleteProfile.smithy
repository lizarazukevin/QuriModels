$version: "2"

namespace com.quri.operations.profiles

use com.quri.models.profiles#ProfileId

@http(method: "DELETE", uri: "/profiles/{profileId}")
operation DeleteProfile {
    input: DeleteProfileInput
    output: DeleteProfileOutput
}

structure DeleteProfileInput {
    @required
    @httpLabel
    profileId: ProfileId
}

structure DeleteProfileOutput {
    profileId: ProfileId
}
