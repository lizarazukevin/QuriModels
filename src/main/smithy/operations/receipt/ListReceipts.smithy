$version: "2"

namespace com.quri.operations.receipts

use com.quri.models.mixins#Paginated
use com.quri.models.receipts#Receipt

/// Returns a paginated list of all receipts.
/// Use `nextToken` from the response to fetch the next page.
/// Omit `maxResults` to use the server default page size.
@readonly
@paginated(inputToken: "nextToken", outputToken: "nextToken", pageSize: "maxResults", items: "receipts")
@http(method: "GET", uri: "/receipts")
operation ListReceipts {
    input: ListReceiptsInput
    output: ListReceiptsOutput
}

@input
structure ListReceiptsInput with [Paginated] {}

@output
structure ListReceiptsOutput {
    @required
    receipts: ReceiptList

    nextToken: String
}

list ReceiptList {
    member: Receipt
}
