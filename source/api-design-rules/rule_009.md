### ID 09

| Title    | __09 - Complex search__ |
| :----    | :---------- |
| Strategy | Use POST for extended or complex searches. |

<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

A POST may be used for an extended or complex search. There is consensus in the market for its use. To avoid conflicts, it is recommended not to implement the POST directly on a collection in this case, but on a 'search' endpoint under that collection (i.e. `POST .../<collection-name>/search`).

See [appendix E](../attachments/Appendix-E-Use-of-HTTP-operations-for-RESTful-APIs.html) for a more detailed description of the POST operation.

#### Rationale

ASNO [mentions this](https://docs.geostandaarden.nl/api/API-Strategie-ext/#x12-2-call-requests) for 
geometric queries. However, allowing a POST with query parameters in the JSON body for a complex search must be seen separately from a geometry query.

#### Exceptions

None.

</details>

