$version: "2"

namespace com.quri.operations.bills

use com.quri.models.bills#Bill

@readonly
@paginated(inputToken: "nextToken", outputToken: "nextToken", pageSize: "maxResults", items: "bills")
@http(method: "GET", uri: "/bills")
operation ListBills {
    input: ListBillsInput
    output: ListBillsOutput
}

@input
structure ListBillsInput {
    @httpQuery("maxResults")
    maxResults: Integer

    @httpQuery("nextToken")
    nextToken: String
}

@output
structure ListBillsOutput {
    nextToken: String

    @required
    bills: BillList
}

list BillList {
    member: Bill
}
