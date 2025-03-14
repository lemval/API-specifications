### ID 08

| Title    | __08 - Use of REST operations__ |
| :----    | :---------- |
| Strategy | REST operations are used conform conventions below. |

1. The **GET** operation in combination **with a resource ID** serves as the only method to _retrieve a given resource_.
2. The **GET** operation **without a resource ID** serves as a _search_.
3. The **PUT** operation serves only to _replace_ an existing resource with a new version.
4. The **POST** operation, if assigned to a collection, serves to _create_ a new resource within that collection.
5. The **POST** operation, if assigned to a 'search' endpoint under a collection, serves as an implementation of a _complex search_ function (see also [ID 09](#id-09)).
6. The **DELETE** operation serves only to _delete_ an existing resource (or resources).
7. The **PATCH** operation serves only to perform a _partial update_ of a resource.
8. The **HEAD** operation serves to retrieve HTTP headers for a corresponding GET operation, without returning the GET response payload.
9. The **OPTIONS** operation provides metadata about a given endpoint such as the available operations, content types and security requirements.

<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

See [appendix E](../attachments/Appendix-E-Use-of-HTTP-operations-for-RESTful-APIs.html) for a detailed description of the operations mentioned.

This guideline is also available in ASNO and is explicitly added to give a more profound explanation of this design rule.

#### Rationale

These are the most common operations.


#### Exceptions

Privacy-sensitive information may not be sent in the GET URI string. Use POST if such information is sent.

</details>

