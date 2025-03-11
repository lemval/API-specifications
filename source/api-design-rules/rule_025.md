### ID 25

| Title    | __25 - Conditional access__ |
| :----    | :---------- |
| Strategy | 1/ Choose a practical taxonomy based on the RESTful API scope;<br/>2/ Split the resources exposed by the RESTful API into separate value objects as much as possible. Make the value object optional if not all consumers are entitled to it;<br/>3/ Make attributes of a resource that are not part of a value object and that, depending on roles and relevance for consumers, are or are not visible, **optional**. |

<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

_Context_: A RESTful domain API provides entity E with different attribute sets. There are sets E1 and E2, which are limitedly visible. Some consumers only see E, others have access to E + E1, E + E2, or all attributes (E + E1 + E2).

Security of RESTful APIs is normally set up over the endpoints (the URLs). However, in the context described above, this is not sufficient to reliably unlock the information on that endpoint. After all, multiple consumers with different roles call the same endpoint and must receive customized information in return.

_Assumptions_:
1. The taxonomy of the information model is leading. One API may possibly provide multiple specializations of resources if this leads to a better interface (see example below);
2. Each entity (resource) is uniquely addressed by exactly one endpoint. The URL of this endpoint is the unique identification of the resource;
3. A subresource is defined in the context of the API as a separate entity that is inseparably linked to a parent resource and can only be addressed via that parent resource. A subresource must contain a unique identifier (e.g. the counter of a meter can be seen as a subresource of that meter with the OBIS code as identification). The taxonomy of the information model of the API determines whether subresources appear as such in the API and if so they are considered as ‘normal’ resources with all associated rules for disclosure. A subresource always has its own endpoint within the API (in the context of the resource that owns it, e.g. smart-meters/{id}/registers/{obis-code}
4. A value object is defined in the context of the API as a group of attributes that together have a semantic meaning, but do not have their own identity (see a value object as a composite attribute of the resource, e.g. an address). A value object is generally manipulated as part of the resource. A value object can only be accessed in the context of the resource that owns it, e.g. customers/{id}/billing-address
5. The roles of the customer are leading for determining the information to be returned and changes to this should have no (or as little as possible) impact on the schema of the API;
6. The schema information within the API contract is not necessarily unambiguous for all the different roles (because this is a static schema) and it is therefore up to the customer to derive the information relevant to him from the schema documentation;
7. The customer always gets the maximum information back that 'fits' his permissions, there is no other filtering (unless explicitly included in the design of the API, e.g. filter parameters in search queries);
8. The scope of a domain API is a single domain. That is: the API does not provide information from other domains, other than a reference to the resource(s) that can provide that information; 

#### Rationale

**Ad 1**: A good taxonomy can solve some of the problems, especially if customers with different roles are involved in separate parts of that taxonomy (e.g. large-scale consumer connections, small-scale consumer connections). This results in multiple logical endpoints with possibly separate target groups per endpoint.

**Ad 2**: When drawing up the schema, it is examined per resource whether the resource can be divided into separate components ('value objects') whose attributes together have a semantic meaning (e.g. address). The objective of this division is that customers receive complete value objects so that the cardinality of attributes within the value object does not depend on permissions and/or roles. A value object that is not permitted for all roles must be made optional.

**Ad 3**: It will never be entirely possible to build a given resource entirely from value objects. There will therefore be 'left over' attributes within the resource. Some attributes will have to be optional, because they are mandatory for one customer and prohibited for another. 

The chosen solution is a compromise between maintainability, clarity and predictability of the API. There are disadvantages to the chosen solution, especially when it comes to predictability towards the receiver. A receiver cannot deduce from the API schema whether a non-received attribute is the result of a lack of rights or not being filled in this attribute. For this, he is dependent on the quality of the service documentation. 

However, an implementation in which the schema is a reflection of the permissions and roles of all possible consumers, actually only makes the problem more complex and makes both the API and the underlying models fragile and difficult to maintain.

_Example omitted_

#### Exceptions

The proposed solution applies to RESTFul domain APIs. For APIs that expose analytical data products, different rules apply as they will often use other standards such as SPARQL or OData;

</details>

