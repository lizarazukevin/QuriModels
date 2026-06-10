$version: "2"

namespace com.quri.models.receipts

use com.quri.models.common#MonetaryAmount

/// A discount applied to a receipt item in terms of a single unit.
///
/// - `category`: classifier for the type of discount received
/// - `value`: flat monetary reduction (e.g. $1 off)
/// - `rate`: percentage reduction (e.g. 20% off)
structure Discount {
    @required
    category: DiscountType

    value: MonetaryAmount

    @range(min: 0, max: 1)
    rate: BigDecimal
}

/// Reason for the discount for classification
///
/// - `PROMO`: promotional offer (e.g. bogo)
/// - `SALE`: temporary price reduction on item
/// - `COUPON`: physical or digital coupon applied at checkout
/// - `REWARD`: loyalty or point-based redemption for members
/// - `OTHER`: catch-all for discounts not covered by existing types
enum DiscountType {
    PROMO
    SALE
    COUPON
    REWARD
    OTHER
}

list DiscountList {
    member: Discount
}
