$version: "2"

namespace com.quri.models.receipts

use com.quri.models.common#MonetaryAmount

/// A single line item on the receipt.
///
/// - `name` is the item's canonical name
/// - `units` determines how many of the item was purchased
/// - `unitCost` is the cost of a single item
/// - `liable` list of contributors responsible for this item
structure Item {
    @required
    name: String

    @required
    @range(min: 1)
    units: Integer

    @required
    unitCost: MonetaryAmount

    /// Empty list means the item is unassigned.
    liable: LiableList
}

list ItemList {
    member: Item
}
