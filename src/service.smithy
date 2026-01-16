$version: "2"

namespace com.quri

use aws.protocols#restJson1
use com.quri.operations.account#DeleteAccount
use com.quri.operations.account#GetAccount
use com.quri.operations.account#ListAccounts
use com.quri.operations.accounts#CreateAccount
use com.quri.operations.bills#CreateBill
use com.quri.operations.bills#DeleteBill
use com.quri.operations.bills#GetBill
use com.quri.operations.bills#ListBills

@restJson1
service Quri {
    version: "2024-01-01"
    operations: [
        CreateAccount
        CreateBill
        DeleteAccount
        DeleteBill
        GetAccount
        GetBill
        ListAccounts
        ListBills
    ]
}
