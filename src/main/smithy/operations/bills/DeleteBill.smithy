$version: "2"

namespace com.quri.operations.bills

use com.quri.models.bills#BillId

@http(method: "DELETE", uri: "/bills/{billId}")
operation DeleteBill {
    input: DeleteBillInput
    output: DeleteBillOutput
}

structure DeleteBillInput {
    @required
    @httpLabel
    billId: BillId
}

structure DeleteBillOutput {
    billId: BillId
}
