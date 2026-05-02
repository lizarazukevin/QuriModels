$version: "2"

namespace com.quri.operations.receipts

use com.quri.models.errors#ResourceNotFoundException
use com.quri.models.receipts#ReceiptId

/// Deletes a receipt by id. Safe to retry — duplicate deletes return the same response.
/// Returns the deleted id as confirmation, allowing clients to reconcile local state
/// without a follow-up fetch.
@idempotent
@http(method: "DELETE", uri: "/receipts/{receiptId}")
operation DeleteReceipt {
    input: DeleteReceiptInput
    output: DeleteReceiptOutput
    errors: [
        ResourceNotFoundException
    ]
}

@input
structure DeleteReceiptInput {
    @required
    @httpLabel
    receiptId: ReceiptId
}

@output
structure DeleteReceiptOutput {
    @required
    receiptId: ReceiptId
}
