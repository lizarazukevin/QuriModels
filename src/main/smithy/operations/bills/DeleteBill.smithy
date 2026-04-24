$version: "2"

namespace com.quri.operations.bills

use com.quri.models.errors#ResourceNotFoundException
use com.quri.models.mixins#MongoId

/// Deletes a bill by id. Safe to retry — duplicate deletes return the same response.
/// Returns the deleted id as confirmation, allowing clients to reconcile local state
/// without a follow-up fetch.
@idempotent
@http(method: "DELETE", uri: "/bills/{billId}")
operation DeleteBill {
    input: DeleteBillInput
    output: DeleteBillOutput
    errors: [
        ResourceNotFoundException
    ]
}

@input
structure DeleteBillInput {
    @required
    @httpLabel
    billId: MongoId
}

@output
structure DeleteBillOutput {
    @required
    billId: MongoId
}
