$version: "2"

namespace com.quri.models.receipts

use com.quri.models.common#MonetaryAmount

/// A single line item on the receipt.
///
/// - `name`: is the item's canonical name
/// - `units`: determines how many of the item was purchased
/// - `unitCost`: is the cost of a single item
/// - `liable`: list of contributors responsible for this item
/// - `discounts`: list of discounts attached to this item (e.g. promo, sale)
structure Item {
    @required
    name: ItemName

    @required
    @range(min: 1, max: 1000000000)
    units: Integer

    @required
    unitCost: MonetaryAmount

    /// Empty list means the item is unassigned.
    liable: LiableList

    discounts: DiscountList
}

@length(min: 1)
list ItemList {
    member: Item
}

@length(min: 3, max: 100)
string ItemName
