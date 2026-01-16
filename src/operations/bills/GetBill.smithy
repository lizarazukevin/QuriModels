$version: "2"

namespace com.quri.operations.bills

use com.quri.models.bills#Bill
use com.quri.models.bills#BillId

@readonly
@http(method: "GET", uri: "/bills/{billId}")
operation GetBill {
    input: GetBillInput
    output: GetBillOutput
}

structure GetBillInput {
    @required
    @httpLabel
    billId: BillId
}

structure GetBillOutput {
    bill: Bill
}