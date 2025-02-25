### Authority component

For \<Authority\>, we distinguish several characteristics as mentioned here.

#### Security aspects

You can choose to add security features to the URI with advantages and disadvantages.

| Option | Advantages | Disadvantages |
| --- | --- | --- |
| Not included (1) | Flexible when changing the security level | Security level cannot be derived from the URI.|
| Included (2) |The security level can be derived from the URI. | Providing security details in the URI is perceived as less secure, can conflict with role based security, and changing the classification means adjusting the URI resulting in a less stable solution.|

Examples with security attribute:
+ ```https://<Authority>/public/<other URI components>```
+ ```https://<Authority>/internal/<other URI components>```

Example without security attribute:
+ ```https://<Authority>/<other URI components>```

We choose the first option here (1):
```
Do not include security attributes of APIs in the URI.
```
{: .boxed }

The motivation is that users can find out for themselves what their rights are when accessing the API.
Adding a security attribute does not make the API itself secure, but there is a chance that
this attribute will change over time.
In practice, in both cases (both options 1 and 2), the APIs are secured by, for example, an
API gateway that can assign rights per resource (outside the scope of the URI strategy).

#### Exposure method (technique)

Functionalities can be offered within a selected \<Authority\> (domain name) in various
technical ways. Examples of these are REST APIs, SOAP web services,
Linked data, etc. There are various options to indicate this distinction (in this case: 'api'):

1. Include the method of exposure in the \<Authority\> section. Example:
```https://<designation>.api.<top domain>/<other Path characteristics>```
2. Include the method of exposure in the \<Path\> section within the resource section. Example:
```https://<Authority>/<other Path characteristics>/api/<other Path characteristics>```

The advantages and disadvantages of both options:
| Option | Advantages | Disadvantages |
| --- | --- | --- |
| Exposed as part of the \<Authority\> (1)|The method of disclosing services is immediately clear from the domain name.<br/> Makes it possible to disclose one resource in different ways.<br/> Routing through the gateway to the backend is easier.|Agreement must be reached on disclosing a new type of service within the domain.|
| Exposed as part of the \<Path\> (2) | Domain name always remains the same.| The method of disclosing services is not immediately clear from the (sub) domain name.|

We choose option (1) here:
```
Add method of disclosing as subdomain in the <Authority> section.
```
{: .boxed }

Motivation:
This choice makes it possible to support different protocols side by side for the same resources. Examples:
- api
- service

Note: although the scope of this document only concerns URIs with respect to the API
design guidelines, the naming convention proposed here also provides for web services. However,
this does not mean that agreeing to this convention means that all existing web services
must have a different URI. For the time being, only the term "api" will be used in the domain section.

#### Environment designation

Following the DSO, we also use an environment designation. For this, we use the
existing agreements within EDSN. It is proposed to fill this in as follows:

|Environment |Abbreviation|
| ---------- |---|
|Production  |prd|
|Acceptance  |acc|
|Test        |tst|
|Development |dev|

The designation "prd" can be used internally, but in accordance with good practice, we will leave this
designation out for our external users (after all, no one surfs to ```https://www.prd.google.com```).

#### Routing

TODO

#### Top domain

TODO