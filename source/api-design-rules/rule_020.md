### ID 20

| Title    | __20 - HTTP headers__ |
| :----    | :---------- |
| Strategy | HTTP headers are used for security and adding metadata to the request and response. |

<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

HTTP headers are technical parameters that contain security information and metadata about the exchanged messages. These technical parameters can be included in the request or response headers of the messages and are not part of the functional payload of the message. The cardinality (mandatory or optional) of the HTTP headers is context-dependent and is described in the Business Service and indicated in the OAS specification.
The HTTP headers are standardized according to the HTTP specification: [HTTP/1.1: Header Field Definitions (w3.org)](https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14) ([superseded](https://www.rfc-editor.org/rfc/rfc9110.html#section-6.3)).

#### Rationale

The set of technical HTTP headers to be supported prescribed in the HTTP specification meets the requirements of the energy sector. The following technical parameter extensions (indicated with prefix ‘X’ according to ASNO) are added to this set:
+ X-Object-ID (response): alternative for header Location if no complete URL is to be returned in the response. X-Object-ID contains the identification number of the created resource; 
+ X-Correlation-ID (request & response): contains a unique identifier that can be used to link different messages in a transaction;
+ X-Request-ID (request): contains the unique identifier of the request;
+ X-Sender-ID (request): the EAN13 of the market party calling the REST API;
+ X-Role (request): the role of the market party indicated by the X-Sender-ID;
+ X-Principal-Token (request): contains the unique identifier of the calling party (person or system) in the context of a request. How the content of the field should be interpreted exactly depends on the context; it could be an OAuth access token, for example.

#### Exceptions


</details>

