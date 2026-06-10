$version: "2"

namespace com.quri.operations.bills

use com.quri.models.bills#Bill
use com.quri.models.mixins#Paginated

/// Returns a paginated list of all bills.
/// Use `nextToken` from the response to fetch the next page.
/// Omit `maxResults` to use the server default page size.
@readonly
@paginated(inputToken: "nextToken", outputToken: "nextToken", pageSize: "maxResults", items: "bills")
@http(method: "GET", uri: "/bills")
operation ListBills {
    input: ListBillsInput
    output: ListBillsOutput
}

@input
structure ListBillsInput with [Paginated] {}

@output
structure ListBillsOutput {
    @required
    bills: BillList

    nextToken: String
}

list BillList {
    member: Bill
}
