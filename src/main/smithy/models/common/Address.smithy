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
    street: State

    @required
    city: City

    @required
    state: State

    @required
    postalCode: PostalCode

    @required
    country: CountryCode

    unit: Unit

    rawInput: AddressRawInput

    /// updated server side via map service
    formatted: AddressFormatted
}

/// US Zip Code - ISO 3166-1 alpha-2 code
/// Examples: "20001", "20001-1234"
@pattern("^[0-9]{5}(-[0-9]{4})?$")
string PostalCode

/// ISO 3166 alpha-2 country code. Exactly 2 uppercase letters.
/// Examples: "US", "GB", "FR", "JP"
@pattern("^[A-Z]{2}$")
string CountryCode

@length(min: 1, max: 50)
string Street

@length(min: 1, max: 50)
string City

@length(min: 1, max: 50)
string State

@length(min: 1, max: 10)
string Unit

@length(min: 1, max: 100)
string AddressRawInput

@length(min: 1, max: 200)
string AddressFormatted
