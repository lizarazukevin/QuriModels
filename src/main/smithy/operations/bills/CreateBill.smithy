$version: "2"

namespace com.quri.operations.bills

use com.quri.models.bills#Bill
use com.quri.models.money#MonetaryAmount

/// Creates a new bill record.
@http(method: "POST", uri: "/bills")
operation CreateBill {
    input: CreateBillInput
    output: CreateBillOutput
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
