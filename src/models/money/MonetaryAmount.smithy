$version: "2"

namespace quri.money

structure MonetaryAmount {
    @required
    amount: BigDecimal

    @required
    currencyCode: CurrencyCode
}

@length(min: 3, max: 3)
@pattern("^[A-Z]{3}$")
string CurrencyCode