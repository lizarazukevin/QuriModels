$version: "2"

namespace com.quri.models.bills

use com.quri.models.money#MonetaryAmount

/// Represents a bill item, tracking the total amount owed
/// and the remaining balance to be paid.
structure Bill {
    /// The unique identifier for this bill, stored as a MongoDB ObjectId.
    @required
    billId: BillMongoId

    /// The original total amount of the bill at the time of creation.
    @required
    total: MonetaryAmount

    /// The current outstanding balance remaining on the bill.
    /// Decreases as payments are applied.
    @required
    balance: MonetaryAmount

    /// The timestamp when this bill was first created.
    createdAt: Timestamp

    /// The timestamp when this bill was last modified.
    updatedAt: Timestamp
}

/// A MongoDB ObjectId represented as a 24-character lowercase hexadecimal string.
/// Example: "507f1f77bcf86cd799439011"
@pattern("^[a-f0-9]{24}$")
string BillMongoId