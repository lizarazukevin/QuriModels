$version: "2"

namespace com.quri.models.bills

use com.quri.models.mixins#Auditable
use com.quri.models.mixins#Identifiable
use com.quri.models.money#MonetaryAmount

/// A bill representing a charge with its original total and remaining balance.
///
/// - `total`: the original charged amount, set at creation and never modified
/// - `balance`: the remaining unpaid amount, decremented as payments are applied
structure Bill with [Identifiable, Auditable] {
    @required
    total: MonetaryAmount

    @required
    balance: MonetaryAmount
}
