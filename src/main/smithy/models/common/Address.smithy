$version: "2"

namespace com.quri.models.common

/// A civic address. All fields except streetAddress are required
/// to support querying, deduplication, and cost analysis grouping.
///
/// - `rawInput`: preserved from OCR output before normalization
/// - `formatted`: the canonical normalized form, written server-side
structure Address {
    @required
    streetAddress: String

    @required
    city: String

    @required
    state: String

    @required
    postalCode: String

    @required
    country: CountryCode

    /// Apartment, suite, residential unit
    unit: String

    /// Raw unparsed string from OCR input, preserved for debugging and reprocessing
    rawInput: String

    /// Server-normalized canonical address string
    formatted: String
}

/// ISO 3166 alpha-2 country code. Exactly 2 uppercase letters.
/// Examples: "US", "GB", "FR", "JP"
@pattern("^[A-Z]{2}$")
string CountryCode
