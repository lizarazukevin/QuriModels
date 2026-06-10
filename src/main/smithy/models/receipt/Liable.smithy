$version: "2"

namespace com.quri.models.receipts

use com.quri.models.mixins#UserId

/// Represents one user's share of liability for a single item.
///
/// - `userId`: liable user
/// - `rate`: percentage of the item user owes (e.g. 0.5 for 50%)
structure Liable {
    @required
    userId: UserId

    @required
    @range(min: 0, max: 1)
    rate: BigDecimal
}

list LiableList {
    member: Liable
}
