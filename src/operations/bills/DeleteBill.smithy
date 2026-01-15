$version: "2"

namespace quri.operations.bill

use quri.bill#BillId

operation DeleteBill {
    input: DeleteBillInput
    output: DeleteBillOutput
}

structure DeleteBillInput {
    @required
    billId: BillId
}

structure DeleteBillOutput {
    billId: BillId
}