### ID 09 - Complex search

| Strategy | Use POST for extended or complex searches, using path postfix `/search`. |

<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

A POST may be used for an extended or complex search. There is consensus in the market for its use. To avoid conflicts and to increase understanding, it is highly recommended to implement the POST on a 'search' endpoint under that collection (i.e. `POST .../<collection-name>/search`).

See [appendix](../attachments/Use-of-HTTP-operations-for-RESTful-APIs.html) for a more detailed description of the POST operation.

When using the GET or QUERY method ([RFC 10008](https://www.rfc-editor.org/rfc/rfc10008.html)) the path postfix `search` should **not** be used.

#### Rationale

ASNO [mentions this](https://docs.geostandaarden.nl/api/API-Strategie-ext/#x12-2-call-requests) for geometric queries. However, allowing a POST with query parameters in the JSON body for a complex search must be seen separately from a geometry query.

Using a standardised path element for searching increases comprehensibility.

#### Exceptions

None.

</details>

