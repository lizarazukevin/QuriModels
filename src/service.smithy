$version: "2"

namespace quri

use quri.operations#GetBill
use quri.operations.account#CreateAccount
use quri.operations.account#DeleteAccount
use quri.operations.account#GetAccount
use quri.operations.bill#CreateBill
use quri.operations.bill#DeleteBill

service QuriService {
    version: "2024-01-01"
    operations: [
        CreateAccount
        CreateBill
        DeleteAccount
        DeleteBill
        GetAccount
        GetBill
    ]
}
