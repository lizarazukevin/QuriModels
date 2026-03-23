$version: "2"

namespace com.quri.models.money

/// Represents a monetary value with explicit currency denomination.
/// Always store and transmit both fields together — an amount without
/// a currency is meaningless.
structure MonetaryAmount {
    @required
    amount: BigDecimal

    @required
    currency: CurrencyCode
}

/// ISO 4217 currency code. Exactly 3 uppercase letters.
/// Examples: "USD", "EUR", "GBP"
@pattern("^[A-Z]{3}$")
string CurrencyCode
