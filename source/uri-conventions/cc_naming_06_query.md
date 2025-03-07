### Query component

The URI component \<Query\> optionally specifies additional parameters that act as 
a filter on the result of the API call.

Possible applications of queries are:
- **Filtering/Searching**: when the user of the API is interested in a part of the dataset, this can be achieved by means of a query. This is comparable to a where statement in an SQL query. From the DSO we adopt the restriction to specify a maximum of five (5) query parameters per call. If more than five are needed, a POST must be used.
- **Pagination/Sorting**: See agreements on this in [MFF-BAS API design guidelines](../api-design-rules/).

