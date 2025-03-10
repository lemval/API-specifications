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
| ---    | ---        | ---           |
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

In the government's environmental law system the idea is that there is one national entrance 
for questions on environmental law and that these are routed to the correct municipality, province, etc.
To make this possible, fixed URLs are used that forward the question to the relevant government institution 
at the back-end. This institution then takes care of further processing.

Within the energy sector, geographical location is much less decisive than with the environmental law.
What is decisive is that certain central, national systems are now maintained by
different organisations (e.g.: CPS at TenneT, CMF services at EDSN) and that without
a routing function there is no possibility to address these services independently of the organisation.


The advantage of a routing function within the naming of the energy sector is that there will no longer be
dependency on names of business units or executive bodies. If something changes here, only the end point 
of the routing needs to be adjusted, the service will still be retrievable by the customer using the same URI.


There are two methods to include the routing function in the URI:
1. include it in the `<Authority>` section (the domain section)
2. include it in the `<Path>` section (the resource section)

The advantages and disadvantages of both options:

| Option | Advantages | Disadvantages |
| --- | --- | --- |
| Included in the \<Authority\> (1)|Locations of services are independent oforganization names such as liander.nl, edsn.nl<br/>Supports routing based on DNS name<br/>Simple and cheap; only a change in DNS records is needed for adjusting routing<br/>Entering in DNS enforces unique names for the entire sector|A generic authority name is needed<br/>A central organization in the energy sector will have to be responsible for maintaining the DNS records (otherwise there is a risk of wild growth).<br/>Decentralized organizations will probably not want to give control of the DNS records to the central organization.|
| Included in the \<Path\> (2)|Clarity: there is only one domain name for the entire energy sector|Routing requires its own routing infrastructure and maintenance|

We choose option (1) here:
```
Included in the <Authority> section.
```
{: .boxed }

Motivation:
Subdomain routing is a simple way to route traffic while using one fixed (main) domain name.

#### Sub domain

There are several options on which to base the choice for a subdomain:
1. On business function
2. On organisation
3. On existing hubs or portals
4. On future hubs or portals
5. On registry

The advantages and disadvantages of the different options:

| Option | Advantages | Disadvantages |
| --- | --- | --- |
| Busines function|Very stable for a long time. The chance that a business function in the energy sector changes is small and if it is discontinued, the service is probably no longer needed.|Significantly impactful, especially for consumers of energy services: all URIs will change (mitigation: silent fade out, coexistance)
|Organisation|Recognizable who is offering the service<br/>Low impact: fits in well with the current situation|Not stable for the long term. Organization names can and will change due to mergers or changing legislation|
|Existing hubs or portals|Low impact and costs<br/>Can be implemented immediately|Less stable for the long term than with the first option|
|Future hubs or portals|Future of hubs is uncertain<br/>Chance of rework and therefore waste|Less stable for the long term than with the first option|
|Registry|Low impact and costs<br/>Can be implemented immediately<br/>Registers are often offered by a single party|Less stable for the long term than with the first option<br/>Resources can change registry|

We choose option (3) here:
```
Subdomain routing based on existing hubs or portals.
```
{: .boxed }

Motivation:
This option is good long-term stability, with low impact and costs. Option 1 is even more long-term stability, but this means, among other things, drawing up an exhaustive list of business functions and applying them to URIs and existing web services.

Overview of central hubs and portals:

| Hub subject | Hub subject (Dutch) | Abbreviation|Target system |
| --- | --- | --- | --- |
|Wholesale electricity |Groothandel elektriciteit |wse |routes to CPS (Tennet, currently MMC) |
|Allocation Reconciliation and Measurementdata | Centrale Allocatie Reconciliatie en Meetdata| arm |routes to C-ARM (EDSN)|
|Wholesale Gas |Groothandel gas |wsg |routes to Nexus (EDSN) |
|Central Market Facilitation |Centrale marktfacilitering |cmf |routes to C-AR and Cloud services (EDSN) |

#### Top domain

When choosing the main domain name of the \<Authority\>, the following options were considered:
1. The domain name of the API provider; e.g. in the case of MFF-BAS: "mffbas.nl"
2. An organization-specific national domain name for all APIs such as "edsn.nl" or "netbeheernederland.nl"
3. A new generic domain name to be chosen nationally such as "netbeheer.nl" or
"nutssector.nl"
4. International persistent domain names such as "purl.org" or "w3id.org"

The following table shows the substantiation for the choice between the different alternatives:

| Option | Advantages | Disadvantages |
| --- | --- | --- |
|Domain name of the API provider|Recognizable to outsiders what the source/provider is (which business unit) and who has the responsibility|APIs that offer the same functionality can be offered by multiple parties over time.<br/>Organization names can change by merging or splitting companies.|
|An organization-specific national domain name for all APIs.|One central point for API access.|National organization names can change by merging or splitting the organizations.<br/>Less recognizable who the provider is.|
|National generic domain name to be chosen that is separate from an organization|When merging or splitting network operators or other sector participants, the URI will remain the same|Agreements and coordination are needed on how participating parties will publish information.|
|International domain name such as: `https://w3id.org/netbeheer/` | When merging or splitting network operators, the URI will remain the same|Dependence on the provider (less control than a private domain name).|

We choose option (3) here:
```
Applying a national generic domain name: energysector.nl (domain is reserved by EDSN).
```
{: .boxed }

motivation:
With this choice, the URI is the most persistent and resilient to organizational changes.
Since (much) functionality is offered nationwide, coordination can be sought per project/initiative on the exact functionality and method of offering.
For information: the domain "energiesector.nl" was already registered by Eneco.

#### Authority result

The above selections result in the following convention:
```
https://api.<environment>.<routing>.energysector.nl
```
{: .boxed }

Examples for \<Authority\>:
- api.acc.cmf.energysector.nl
- api.wse.energysector.nl (not: api.**prd**.wse.energysector.nl)

