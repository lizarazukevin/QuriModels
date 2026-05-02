$version: "2"

namespace com.quri.operations.receipts

use com.quri.models.errors#ResourceNotFoundException
use com.quri.models.receipts#Receipt
use com.quri.models.receipts#ReceiptId

/// Fetches a single receipt by id.
@readonly
@http(method: "GET", uri: "/receipts/{receiptId}")
operation GetReceipt {
    input: GetReceiptInput
    output: GetReceiptOutput
    errors: [
        ResourceNotFoundException
    ]
}

@input
structure GetReceiptInput {
    @required
    @httpLabel
    receiptId: ReceiptId
}

@output
structure GetReceiptOutput {
    @required
    receipt: Receipt
}
