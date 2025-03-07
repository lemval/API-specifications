### ID 04

| Title    | __04 - Query parameter for searching__ |
| :----    | :---------- |
| Strategy | Use '_search' or 'search' for full text searches. |

<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

This is conform ASNO API-32. To prevent confusion or conflicts with resource parameters the underscore variant is favoured.

#### Rationale

Using a standardised parameter for searching (full text searches) increases comprehensibility.

#### Exceptions

Complex searches should make use of a request payload.

</details>
