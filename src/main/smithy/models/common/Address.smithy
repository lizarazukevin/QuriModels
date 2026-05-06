$version: "2"

namespace com.quri.models.common

/// A civic address. All fields except streetAddress are required
/// to support querying, deduplication, and cost analysis grouping.
///
/// - `unit`: apartment, suite, residential unit
/// - `rawInput`: raw unparsed entry preserved from OCR before normalization
/// - `formatted`: the canonical normalized form, written server-side
structure Address {
    @required
    street: String

    @required
    city: String

    @required
    state: String

    @required
    postalCode: PostalCode

    @required
    country: CountryCode

    unit: String

    rawInput: String

    formatted: String
}

/// Valid US zip code
/// Examples: "20001", "20001-1234"
@pattern("^[0-9]{5}(-[0-9]{4})?$")
string PostalCode

/// ISO 3166 alpha-2 country code. Exactly 2 uppercase letters.
/// Examples: "US", "GB", "FR", "JP"
@pattern("^[A-Z]{2}$")
string CountryCode
