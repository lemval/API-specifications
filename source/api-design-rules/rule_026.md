### ID 26

| Title    | __26 - Use encoded cursor paging__ |
| :----    | :---------- |
| Strategy | If an operation uses pagination, this is implemented using an encoded cursor pagination algorithm. |

<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

Encoded cursor pagination works on the principle that an opaque string (preferably Base64 encoded) is always returned (for the client), regardless of the pagination implementation on the server side. The client must provide this cursor with a subsequent request to obtain a subsequent set of data. This subsequent request must be submitted within a reasonable period of time (maximum 5 minutes). If the same cursor is (re)used after a longer period of time, it is possible that different results will be returned, e.g. as a result of adding or removing records.

The client sends the following query parameters:

|Query parameter|Meaning|
|---|---|
| *_cursor* | Optionally a cursor received from the server from a previous response. The first time this will of course be missing. The client must return a received cursor string without modifications and a cursor has a (very) limited validity (depending on the dynamics of the dataset used, but max. 5 minutes). |
| *_limit* | Optionally the number of records per page. In principle this is a constant value. If no limit is given, the server should use a realistic default of 100. A limit of 100 means that there are _at most_ 100 records in a page.|

The server will then return the following data in the body of the response:

|Property|Meaning|
|---|---|
|nextCursor|Cursor of the next page, absent if there is no next page.|
|items|An array with records. The array will contain a maximum of 'limit' number of records. Instead of 'items' a more appealing name can also be chosen, depending on the type of records that are returned.|

#### Rationale

Development teams are free to choose the most efficient method of pagination for the implementation in question, without the client having to know about it. Encoded cursor pagination does not enforce the implementation of a certain style of pagination. This promotes consistency within APIs and also makes the implementation on the client side unambiguous.

A disadvantage of encoded cursor pagination is that it is no longer possible to navigate directly to a specific page. With offset pagination, it is possible to navigate directly to offset=100000&limit=100, for example. This is not possible with encoded cursor pagination. The same applies to backward navigation. However, the use cases for this do not seem to exist at the moment.

#### Exceptions

APIs that do not currently use encoded cursor pagination will remain permitted for the time being. New APIs to be delivered are expected to use encoded cursor pagination.

</details>

