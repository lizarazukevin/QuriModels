$version: "2"

namespace com.quri.errors

/// The requested resource could not be found.
/// Clients should not retry without modifying the request.
@error("client")
@httpError(404)
structure ResourceNotFoundException {
    @required
    message: String
}

/// The request was malformed or failed validation.
/// Clients should not retry without modifying the request.
@error("client")
@httpError(400)
structure ValidationError {
    @required
    message: String
}

/// An unexpected error occurred on the server.
/// Clients may retry with exponential backoff.
@error("server")
@httpError(500)
structure InternalError {
    @required
    message: String
}
