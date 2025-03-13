### ID 15

| Title    | __15 - Authorization__ |
| :----    | :---------- |
| Strategy | Authorization on APIs should be set up with OAuth2.0 and preferably with OpenID Connect. |

<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

OAuth2 is used for authorization on APIs. An Access token is used to grant access to a Resource server (API). [IETF standard OAuth2](https://tools.ietf.org/html/rfc6749)

OpenID Connect is for authenticating users. OpenID Connect is a standard on top of OAuth2. However, OAuth2 does not describe how user authentication should take place. That is why OpenID Connect is recommended. [IETF standard OpenID Connect](https://openid.net/specs/openid-connect-core-1_0.html)

PKCE is a standard to enable the Authorization code flow for public clients. [RFC](https://tools.ietf.org/html/rfc7636)

OpenID Connect and OAuth2 contain multiple flows and grant types. The following are recommended:
+ Authorization code flow with PKCE when a user logs in;
+ Client credentials grant for application to application authorization.

JWT access tokens are recommended to be able to do validation at Resource server (API) level without dependency on an authorization server. [IETF draft JWT Access token](https://tools.ietf.org/html/draft-ietf-oauth-access-token-jwt-02)

#### Rationale

Securing sensitive data within APIs is essential. OpenID Connect and OAuth2 are API security standards that are recognized and supported worldwide. By using market standards, parties that want access to APIs can easily and securely connect to them.

#### Exceptions

None.

</details>

