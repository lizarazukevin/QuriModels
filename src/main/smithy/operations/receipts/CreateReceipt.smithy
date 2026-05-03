$version: "2"

namespace com.quri.operations.receipts

use com.quri.models.common#Address
use com.quri.models.common#MonetaryAmount
use com.quri.models.receipts#FeeList
use com.quri.models.receipts#ItemList
use com.quri.models.receipts#PaymentMethod
use com.quri.models.receipts#Receipt
use com.quri.models.receipts#StringList

/// Creates a new receipt record within a bill.
@http(method: "POST", uri: "/receipts")
operation CreateReceipt {
    input: CreateReceiptInput
    output: CreateReceiptOutput
}

@input
structure CreateReceiptInput {
    @required
    vendorName: String

    @required
    items: ItemList

    @required
    occurredAt: Timestamp

    @required
    paymentMethod: PaymentMethod

    @required
    subtotal: MonetaryAmount

    @range(min: 0, max: 1)
    tax: BigDecimal

    @range(min: 0, max: 1)
    tip: BigDecimal

    totalSavings: MonetaryAmount

    fees: FeeList

    address: Address

    photoId: String

    urls: StringList
}

@output
structure CreateReceiptOutput {
    @required
    receipt: Receipt
}
