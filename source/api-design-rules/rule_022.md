### ID 22

| Title    | __22 - Use of regular personal data in the URL of REST APIs__ |
| :----    | :---------- |
| Strategy | Regular personal data may be used in the URL of a REST API. |

<details><summary>

Open section for explanation, rationale and exception conditions 

</summary>

#### Explanation

The privacy officers of the regional grid operators have formulated a view on the use of regular personal data in the URL of REST APIs based on the PPT of Enexis (Security & Privacy aspects in REST APIs - Enexis PPT CST integration dd. 03-06-2021).

#### Rationale

**Privacy Aspects - Statement**

Assuming that:
+ When using (regular) personal data in the URL, the entire message (body and URL) is encrypted during sending;
+ This data can only be viewed by the API Consumer, API Gateway and API Provider;
+ Use of personal data in the URL may only be used if it is necessary for the sending and receiving parties to gain insight into this (personal) data for the performance of their task; 
+ No sensitive or special personal data can be derived from the URL (Category 2);

there is an acceptable risk for the Business for the use of a number of ordinary personal data in the URL of the REST APIs. In particular to make the construction of APIs manageable and controllable. This includes the use of identifying data, such as:
+ BAG;
+ EAN code;
+ Customer number;
+ Meter number;
+ Postcode / house number.

A combination of certain ordinary personal data in the URL of a REST API can create new sensitive information. If the combination of ordinary personal data leads to sensitive information in the URL, this combination is not permitted!

In addition, there are a number of sensitive or special personal data that - if they become known - can cause damage to the customer. This data may never appear in the URL of REST APIs. If it is necessary to exchange this data, it will only be sent in the body, so that this data cannot be derived from logging.

The list of special personal data is exhaustive, namely:
+ Race or ethnic origin;
+ Political views;
+ Religious or philosophical beliefs;
+ Membership of a trade union;
+ Genetic or biometric data;
+ Health data;
+ Data on sexual orientation;
+ BSN number;
+ Criminal data.

Sensitive data includes, for example (non-exhaustive):
+ Fraud data;
+ Financial data (both bank account number/credit card and payment data);
+ Energy consumption data;
+ Cut off data.

It is not possible for Privacy to provide an exhaustive list of personal data and to which category they belong. Whether something is personal data and the sensitivity is strongly dependent on the context in which the data is used.

#### Exceptions

Combining multiple regular personal data in the URL of a REST API is not allowed!

</details>

