$version: "2"

namespace com.quri.operations.bills

use com.quri.models.bills#BillId
use com.quri.models.errors#ResourceNotFoundException

/// Deletes a bill by id. Safe to retry — duplicate deletes return the same response.
/// Returns the deleted id as confirmation, allowing clients to reconcile local state
/// without a follow-up fetch.
@idempotent
@http(method: "DELETE", uri: "/bills/{id}")
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
    id: BillId
}

@output
structure DeleteBillOutput {
    @required
    id: BillId
}
