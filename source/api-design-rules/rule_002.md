### ID 02

| Title    | __02 - Version management__ |
| :----    | :---------- |
| Strategy | APIs are always provided with a version. |

<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

APIs are always provided with a version. Rules for versioning:
+ major: Not backward compatible, therefore major impact for the service consumer;
+ minor: Backward compatible, limited impact for the service consumer;
+ patch: Backward compatible, no impact for the service consumer. Intended for small fixes and may be rolled out without further specific notification.

Which version characteristic is included in the naming of the API is described in the NEDU API URI guidelines [6](../references.md).

#### Rationale

Agreements on which version(s) is/are in production and whether there is a transition period between the versions are, in contrast to the guidelines from ASNO (API Principle 4.4/API-20), not imposed as a generic guideline for the energy sector. Instead, agreements are made and recorded per API. New versions of the API and production version are supported during a transition period. The number of versions that may be in production simultaneously is limited to two (2) or as prescribed in the implementation strategy of the relevant MFF Topic.

#### Exceptions

n.a.

</details>
