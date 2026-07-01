### ID 27 - Use simple search to retrieve a resource via a foreign key

| Strategy | If a resource has to be retrieved using a foreign key (i.e. a key that is not the primary key of the resource), use GET on the *resource collection* and provide the key as a query parameter. |


<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

A resource has to be retrieved using a key that is not the primary key of the resource, but is available as a property in the resource collection. In this case, it is not feasible to use the key as a path parameter since those are reserved for primary resource keys. The solution is to implement a simple search on the collection, using the foreign key as a query parameter.

<u>Example</u>: `GET .../meter-management/v1/meters?accounting-point={EAN18}`

In the example above, a meter is selected from the collection of meters using the associated accounting point as the (foreign) key.

#### Rationale

A resource is typically retrieved using the primary key of that resource within a collection of resources of equal type. When a foreign key is used, this can not be specified as a path parameter since it addresses a different type of resource. Creating an 'artificial' collection just to be able to use the foreign key as a path parameter typically leads to a confusing API structure as shown in the example below.

<u>Example</u>: `GET ...meter-management/v1/accounting-points/{EAN18}` 

In the example above, an artificial collection has been defined with no other purpose than to retrieve a meter using the (foreign) key of the associated accounting point. However, this endpoint suggests that the meter-management API contains a collection of accounting points, which is not true.

As an alternative, one could create separate endpoints for each foreign key as shown in this example:

<u>Example</u>: `GET ...meter-management/v1/meters-by-accounting-point/{EAN18}` 

The above example leads to a RESTful API that is cluttered with endpoints that distract from the primary function of the API and which are also not addressing real resources, which is against the principles of RESTful API design.

#### Exceptions

None.

