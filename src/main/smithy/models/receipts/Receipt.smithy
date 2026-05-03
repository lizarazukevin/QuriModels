$version: "2"

namespace com.quri.models.receipts

use com.quri.models.common#Address
use com.quri.models.common#MonetaryAmount
use com.quri.models.mixins#Auditable
use com.quri.models.mixins#Owned

/// The structured record of a transaction. Always present on a Bill.
/// A receipt may be entered manually or parsed from a photo via OCR.
///
/// - `vendorName`: name of the institution transaction occurred
/// - `items`: list of items that need assigning
/// - `occurredAt`: when the transaction happened, not when the bill was created
/// - `paymentMethod`: method for payment recorded on receipt
/// - `subtotal`: the pre-tax, pre-fee sum of all items
/// - `tax`: decimal rate for tax on transaction (e.g. sales)
/// - `tip`: decimal rate for tip amount
/// - `totalSavings`: aggregated savings found at bottom of receipt
/// - `fees`: list of additional fees (e.g. service, delivery, credit)
/// - `address`: location where transaction occurred
/// - `photoId`: optional — photo asset ref stored externally (e.g. S3 object key)
/// - `urls`: raw urls parsed from input method
structure Receipt with [Auditable, Owned] {
    @required
    id: ReceiptId

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

    /// Absent if no photo was captured
    photoId: String

    urls: StringList
}

enum PaymentMethod {
    CREDIT
    DEBIT
    CASH
    OTHER
}

list StringList {
    member: String
}

string ReceiptId
