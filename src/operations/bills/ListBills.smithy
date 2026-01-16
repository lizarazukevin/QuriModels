$version: "2"

namespace com.quri.operations.bills

use com.quri.models.bills#Bill

@readonly
@http(method: "GET", uri: "/bills")
operation ListBills {
    output: ListBillsOutput
}

list BillList {
    member: Bill
}

structure ListBillsOutput {
    bills: BillList
}