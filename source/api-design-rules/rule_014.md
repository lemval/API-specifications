### ID 14

| Title    | __14 - Defining a string__ |
| :----    | :---------- |
| Strategy | The definition of a string type must be provided with length attributes. |

<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

In line with TC028 [\[4\]](../references.html), the definition of a string type in the API specification must be provided with a fixed or a minimum/maximum length attribute, where the minimum length must be 1 (the field itself may be optional). A length of 0 is therefore not allowed. Examples are:
```
type: string
minLength: 1
maxLength: 10
```
```
type: string
length: 10
```

#### Rationale

This is to exclude the situation where an API call contains an empty string which can therefore possibly lead to failure at service providers or service consumers.

The advice is to define the maximum length for the service consumer for strings in the response to an API call.

#### Exceptions

None.


</details>

