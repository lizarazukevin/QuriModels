$version: "2"

namespace com.quri.operations.receipts

use com.quri.models.common#Address
use com.quri.models.common#MonetaryAmount
use com.quri.models.receipts#FeeList
use com.quri.models.receipts#ItemList
use com.quri.models.receipts#PaymentMethod
use com.quri.models.receipts#Receipt
use com.quri.models.receipts#UrlList
use com.quri.models.receipts#VendorName

/// Creates a new receipt record within a bill.
@http(method: "POST", uri: "/receipts")
operation CreateReceipt {
    input: CreateReceiptInput
    output: CreateReceiptOutput
}

@input
structure CreateReceiptInput {
    @required
    vendorName: VendorName

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

    /// Update type when we settle on the String pattern
    photoId: String

    urls: UrlList
}

@output
structure CreateReceiptOutput {
    @required
    receipt: Receipt
}
