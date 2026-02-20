$version: "2"

namespace com.quri.models.money

structure MonetaryAmount {
    @required
    amount: BigDecimal

    @required
    currencyCode: CurrencyCode
}

@length(min: 3, max: 3)
@pattern("^[A-Z]{3}$")
string CurrencyCode
