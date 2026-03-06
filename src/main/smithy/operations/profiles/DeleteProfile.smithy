$version: "2"

namespace com.quri.operations.profiles

use com.quri.errors#ResourceNotFoundException
use com.quri.models.profiles#ProfileMongoId

@http(method: "DELETE", uri: "/profiles/{profileId}")
operation DeleteProfile {
    input: DeleteProfileInput
    output: DeleteProfileOutput
    errors: [
        ResourceNotFoundException
    ]
}

structure DeleteProfileInput {
    @required
    @httpLabel
    profileId: ProfileMongoId
}

structure DeleteProfileOutput {
    profileId: ProfileMongoId
}
