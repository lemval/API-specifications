### ID 10

| Title    | __10 - HTTP status codes__ |
| :----    | :---------- |
| Strategy | Define the minimum set of HTTP status codes in your API specification. |

<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

Define the minimum set of HTTP status codes that must be specified and supported by a REST API. Minimum mandatory set of HTTP status codes per REST operation:

|REST operation     | 200 | 201 | 204 | 404 | 422 |
| -------------     | :-: | :-: | :-: | :-: | :-: |
|GET (search)       |  √  |     |     |  √  |  √  |
|GET )single object)|  √  |     |     |  √  |     |
|PUT                |     |     | opt |  √  |  √  |
|PATCH              |     |     | opt |  √  |  √  |
|DELETE             | opt |     |  √  |  √  |     |
|POST (create)      |     |  √  |     |     |  √  |
|POST (search/action)| √  |     |     |     |  √  |
|HEAD               |     |     |  √  |  √  |     |
|OPTIONS            |     |     |  √  |     |     |

+ The status code 422 is strictly used for semantic validation of the payload.
+ The following **mandatory** codes can be seen as generic status codes and are therefore applicable to all REST operations: 401, 403, 500;
+ The following **optional** codes can be seen as generic status codes and are therefore applicable to all REST operations: 202, 400, 429, 301, 302, 501, 503;

Opt indicates that the error code can optionally be used in special cases:
+ A 204 status code can be returned for an update (PUT or PATCH) of a resource since these do not (always) return a response payload;
+ A 202 status code can be returned if it concerns an asynchronous handling (PUT, POST, PATCH or DELETE);
+ A 200 status code must be returned for a DELETE operation if there is a need for a response payload with information about the deleted resource.

See also [appendix E](../attachments/Appendix-E-Use-of-HTTP-operations-for-RESTful-APIs.html) for a detailed explanation per operation, including the use of response codes.

#### Rationale

Both Geonovum and DSO describe a mandatory set of HTTP status codes that must be supported at least in an API definition. However, there are some differences visible between DSO and Geonovum in the description and application of these HTTP codes. 
For example, the 404 is mentioned by Geonovum, not by DSO, and we see the 412 as a mandatory code at DSO and not at Geonovum. Also in the discussions on Github of 'Kennisplatform APIs', we see many differences in interpretation and opinions about the correct use of HTTP status codes.

Specifying a minimum set of HTTP status codes that must be used for a REST operation gives the API designer clarity when designing and developing the REST API.

#### Exceptions

None.

</details>




