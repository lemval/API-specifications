### ID 19

| Title    | __19 -  Custom representation__ |
| :----    | :---------- |
| Strategy | For targeted searches for individual fields ('custom representation'), the '_fields' parameter is used. |

<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

Users of an API do not always need the full representation (i.e. all fields) of a resource. That is why it helps if there is the possibility to select the desired fields, we call this 'custom representation'. This can limit network traffic (relevant for lightweight applications), simplifies the use of the API and makes the output customizable (custom).

#### Rationale

The use of the '_fields' parameter for requesting individual fields is laid down in the API Strategy DSO [\[8\]](../references.html).

#### Exceptions


</details>

