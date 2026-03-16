$version: "2"

namespace com.quri.operations.profiles

use com.quri.errors#ResourceNotFoundException
use com.quri.models.profiles#ProfileMongoId

@idempotent
@http(method: "DELETE", uri: "/profiles/{profileId}")
operation DeleteProfile {
    input: DeleteProfileInput
    output: DeleteProfileOutput
    errors: [
        ResourceNotFoundException
    ]
}

@input
structure DeleteProfileInput {
    @required
    @httpLabel
    profileId: ProfileMongoId
}

@output
structure DeleteProfileOutput {
    profileId: ProfileMongoId
}
