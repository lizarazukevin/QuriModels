$version: "2"

namespace com.quri.operations.receipts

use com.quri.models.common#Address
use com.quri.models.common#MonetaryAmount
use com.quri.models.errors#ResourceNotFoundException
use com.quri.models.receipts#FeeList
use com.quri.models.receipts#ItemList
use com.quri.models.receipts#PaymentMethod
use com.quri.models.receipts#Receipt
use com.quri.models.receipts#ReceiptId
use com.quri.models.receipts#UrlList
use com.quri.models.receipts#VendorName

/// Updates an existing receipt fully.
@idempotent
@http(method: "PUT", uri: "/receipts/{receiptId}")
operation UpdateReceipt {
    input: UpdateReceiptInput
    output: UpdateReceiptOutput
    errors: [
        ResourceNotFoundException
    ]
}

@input
structure UpdateReceiptInput {
    @required
    @httpLabel
    receiptId: ReceiptId

    vendorName: VendorName

    items: ItemList

    occurredAt: Timestamp

    paymentMethod: PaymentMethod

    subtotal: MonetaryAmount

    tax: BigDecimal

    tip: BigDecimal

    totalSavings: MonetaryAmount

    fees: FeeList

    address: Address

    photoId: String

    urls: UrlList
}

@output
structure UpdateReceiptOutput {
    @required
    receipt: Receipt
}
