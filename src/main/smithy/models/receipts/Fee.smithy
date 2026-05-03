$version: "2"

namespace com.quri.models.receipts

/// Fee charged depending on service and payment provided.
///
/// - `name`: identifier for fee type (e.g. service, gratuity)
/// - `rate`: percentage of the subtotal owed (e.g. 0.5 for 50%)
structure Fee {
    @required
    name: String

    @required
    @range(min: 0, max: 1)
    rate: BigDecimal
}

list FeeList {
    member: Fee
}
