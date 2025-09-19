### ID 05

| Title    | __05 - Errors and exceptions__ |
| :----    | :---------- |
| Strategy | APIs must handle errors and exceptions uniformly and according to standards. |

<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

Error messages must be specified according to the standardized error message format of RFC-9457 ([RFC 9457 - Problem Details for HTTP APIs](https://datatracker.ietf.org/doc/html/rfc9457)), as prescribed in API-46 in ASNO. The following attributes are mandatory for each error message:
+ _type_: contains a URI reference to the error type;
+ _title_: generic title for the error type;
+ _status_: the original HTTP status code provided by the server;
The default value 'about:blank' may be used if no URI reference for attribute 'type' can be given.

Example:
```json
{
  "type": "https://datatracker.ietf.org/doc/html/rfc7231#section-6.5.3",
  "title": "Forbidden"
  "status": 403
}
```

In addition to the mandatory attributes mentioned above, RFC-9457 specifies a number of optional attributes:
+ _detail_: additional detailed information about the error;
+ _instance_: URI of the call that caused the error.

RFC-9457 allows the error message to be extended with context-specific attributes to send additional information in the response to the consumer. An example of this is the sending of a so-called 'errorCode' by the application in question, which refers to a business rule of this application that indicates why the submitted request cannot be processed.

Errors and exceptions must be handled in accordance with the following guidelines:
1. The error message must be formulated abstractly and functionally so that every consumer understands it;
1. The (functional) error message must be in the payload (body) of the message;
1. The error message must not contain any (technical) implementation details (e.g. stack trace).

See [the appendix](../attachments/errorhandling.md) for a detailed description of a proposed mechanism for handling errors according to RFC-9457.


#### Rationale

This enables consistent and clear behavior for error messages.

#### Exceptions

n.a.

</details>


05 - Errors and exceptions


