$version: "2"

namespace com.quri.models.receipts

use com.quri.models.common#MonetaryAmount

/// Fee charged depending on service and payment provided.
///
/// - `name`: identifier for fee type (e.g. service, gratuity)
/// - `value`: flat monetary reduction (e.g. $1 off)
/// - `rate`: percentage reduction (e.g. 20% off)
structure Fee {
    @required
    name: FeeName

    value: MonetaryAmount

    @range(min: 0, max: 1)
    rate: BigDecimal
}

list FeeList {
    member: Fee
}

@length(min: 3, max: 50)
string FeeName
