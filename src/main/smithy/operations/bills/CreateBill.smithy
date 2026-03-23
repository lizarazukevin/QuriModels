$version: "2"

namespace com.quri.operations.bills

use com.quri.errors#InternalError
use com.quri.models.bills#Bill
use com.quri.models.money#MonetaryAmount

/// Creates a new bill record.
/// `balance` defaults to `total` at creation if not explicitly provided —
/// enforce this invariant at the service layer, not here.
@http(method: "POST", uri: "/bills")
operation CreateBill {
    input: CreateBillInput
    output: CreateBillOutput
    errors: [
        InternalError
    ]
}

@input
structure CreateBillInput {
    @required
    total: MonetaryAmount

    balance: MonetaryAmount
}

@output
structure CreateBillOutput {
    @required
    bill: Bill
}
