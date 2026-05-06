$version: "2"

namespace com.quri.operations.bills

use com.quri.models.bills#Bill
use com.quri.models.bills#BillDescription
use com.quri.models.bills#BillName
use com.quri.models.bills#BillStatus

/// Creates a new bill record.
@http(method: "POST", uri: "/bills")
operation CreateBill {
    input: CreateBillInput
    output: CreateBillOutput
}

@input
structure CreateBillInput {
    @required
    name: BillName

    @default("DRAFT")
    status: BillStatus

    @default(false)
    hidden: Boolean

    description: BillDescription
}

@output
structure CreateBillOutput {
    @required
    bill: Bill
}
