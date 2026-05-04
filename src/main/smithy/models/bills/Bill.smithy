$version: "2"

namespace com.quri.models.bills

use com.quri.models.common#MonetaryAmount
use com.quri.models.mixins#Auditable
use com.quri.models.mixins#Owned
use com.quri.models.receipts#ReceiptIdList

/// A bill representing a transaction summary.
///
/// - `name`: custom name to identify bill purpose
/// - `state`: stores which stage in lifecycle bill is at
/// - `hidden`: controls visibility of bill to non-contributors (true -> only contributors)
/// - `description`: optional — used to add more context to a bill
/// - `balance`: the remaining unpaid amount, update as payments are applied
/// - `receipts`: reference to created receipts
structure Bill with [Auditable, Owned] {
    @required
    id: BillId

    @required
    name: String

    @required
    status: BillStatus

    @required
    hidden: Boolean

    description: String

    balance: MonetaryAmount

    receipts: ReceiptIdList
}

/// Lifecycle of a bill defined by statuses.
///
/// - `DRAFT`: user saved draft, but not published yet
/// - `PENDING`: waiting on processing from receipt scanning
/// - `PUBLISHED`: active and visible to all contributors
/// - `COMPLETED`: all liable items have been fulfilled
/// - `CLOSED`: archived, no further mutations permitted
enum BillStatus {
    DRAFT
    PENDING
    PUBLISHED
    COMPLETED
    CLOSED
}

string BillId
