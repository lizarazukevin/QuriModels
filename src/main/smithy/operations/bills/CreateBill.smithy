$version: "2"

namespace com.quri.operations.bills

use com.quri.models.bills#Bill
use com.quri.models.bills#BillStatus

@http(method: "POST", uri: "/bills")
operation CreateBill {
    input: CreateBillInput
    output: CreateBillOutput
}

@input
structure CreateBillInput {
    @required
    name: String

    status: BillStatus

    hidden: Boolean

    description: String
}

@output
structure CreateBillOutput {
    @required
    bill: Bill
}
