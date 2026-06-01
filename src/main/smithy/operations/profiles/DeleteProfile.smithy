$version: "2"

namespace com.quri.operations.profiles

use com.quri.models.errors#ResourceNotFoundException
use com.quri.models.users#ProfileId

/// Deletes a profile by id. Safe to retry — duplicate deletes return the same response.
/// Returns the deleted id as confirmation, allowing clients to reconcile local state
/// without a follow-up fetch.
@idempotent
@http(method: "DELETE", uri: "/profiles/{id}")
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
    id: ProfileId
}

@output
structure DeleteProfileOutput {
    @required
    id: ProfileId
}
