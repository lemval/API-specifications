### Path component

Resources can be classified flatly or hierarchically. However, the hierarchical classification 
provides direct insight into the context in which the resource is placed. We therefore opt 
for a hierarchical classification with multiple levels.

#### Root level

There are several options for filling in the root level:
1. based on the business unit that manages the resources
2. based on the department that manages the resources
3. based on the team that unlocks the resources
4. based on the business function (such as Operations, Asset Maintenance, etc.) in which the resources are used
5. based on business objects on level 1 of [the NBility BOM model](https://nbility-model.github.io/NBility-business-capabilities-Archi/?view=id-928653f85c2649fcb2f807ed41a94ac3)
6. based on so-called ‘Bounded Contexts’
7. based on Value Streams or ARTs from EDSN


| Option | Advantages | Disadvantages |
| --- | --- | --- |
|Business Unit| Clear to the customer who offers the API.|Business units are subject to change. Perhaps in the future, we will organize ourselves on the basis of, for example, value chains.<br/> Business units per company may differ and may not be known to the consumer.|
|Departments| Clear to the customer who offers the API.| Departments change regularly.<br/> Departments per company may differ and may not be known to the consumer.|
|Teams| Clear to the customer who offers the API. Very recognizable for "local" consumers.|Teams change regularly.<br/>Teams per company may differ and may not be known to the consumer.|
|Business Function| Independent of the organisational structure of the offering organization.<br/>The business functions of the underlying parties are very stable and give some hint where the function can be located in the company.|Responsible cannot be determined directly.<br/>A function does not fit well with the desired resource approach.<br/>There are many business functions, using them results in many entries.|
|Business Object|Business objects are inherently suitable to serve as a resource, are very stable over time and are recognizable to all parties.<br/>Business objects are defined and coordinated with the three largest regional network operators in the shared capability model (NBility).|There remains discussion about scope and granularity of business objects.|
|Bounded Context|Bounded Contexts ensure a good demarcation within the organization.<br/>If chosen well, BCs are very stable over time.|BCs are less recognizable to external parties|
|Value Stream|Correctly chosen value streams ensure independence of the development teams from each other. This promotes faster development times and simpler maintenance.|It is difficult to choose value streams well.<br/>Changes in the value streams are currently expected, whereby multiple teams will belong to a single value stream. It is expected that a classification based on value stream will be too coarse to serve as a main level.|

We choose the fifth option here (5):
```
Use an NBility business object (level 1) for the root level of the <Resource>.
```
{: .boxed }

Motivation:
Business objects are the most stable and provide context to the APIs to be developed and the terms used. In addition, this prepares one best for the future when any new business objects arise during the energy transition.
With the arrival of [NBility](https://nbility-model.github.io/NBility-business-capabilities-Archi/?view=id-63115eca050847fcb7cc162259ac1a78) in September 2021, the joint grid operators use the same
names for their business objects. By agreement, we always use the English translations of these business objects for the application in URIs. Because business objects have a strong relationship
with business functions and processes that affect these business objects, they are described in
NBility as so-called capabilities. A capability is derived from business objectives and
represents everything needed to achieve the set business results. Simply put: in the
context of URI naming, a capability includes the CRUD (Create, Read, Update and Delete)
operations on a business object.

#### Sublevels

As the root level follows the NBility business object model (BOM for short), the second and third level of the \<Path\> conform to the BOM on the levels of NBility.  In [an addendum](../attachments/nbility-levels-uri2.md) the current levels are listed.

#### API name (last part)

This level represents all related resources and the associated business function. The name should be as generic as possible to allow for later expansion of the API without having to name a new API. As a guideline, a contraction of the NBility object at level three and the capability at level three can be used.

_Note that NBility 2.3 mentions different capabilities_

|NBility designation|Capability level three|BOM level three|API name|
| --- | --- | --- | --- |
|6.1.1| Maintain relations with market parties | market-participant | market-participant-management |
|6.1.2| Handle questions of market parties     | market-case        | market-case-management |
|6.1.3| Operate energy markets                 | market-agreement   | contract-management |
|6.1.4| Manage energy grid markets             | energy-market      | energy-market-management |
|6.2.1| Manage connections/allocation points   | connection         | connection-management |
|6.2.2| Manage installations behind connections| facility           | facility-management |
|6.2.3| Manage congestion areas                | congestion-area    | congestion-area-management |
|6.3.1| Execute energy market procedures       | market-request     | market-request-management |
|6.3.2| Exchange energy predictions            | energy-schedule    | energy-schedule-communication |
|6.3.3| Manage energy exchange                 | energy-exchange    | energy-exchange-quantification |
|6.3.4| Facilitate market settlement           | market-invoice     | market-invoice-assignment |
|6.3.5| Communicate upward or downward regulation demand|regulation-demand|regulation-demand-notification|
|6.3.6| Manage upward or downward regulation supply|regulation-offer| regulation-offer-management |
|6.4.3| Manage issued permissions              |consent-fromsystem-user|user-consent-management|

The contractions in the last column are not an official part of the NBility model.


To facilitate future naming and to implement naming as uniformly as possible, here is a list of keywords that are leading for the API name:

| Keyword | Application, meaning |
| --- | --- |
| management     | if the API affects all stages of the life cycle of a resource (all CRUD operations) |
| retrieval      | if the API has a requesting character |
| assignment     | if the API assigns something to a party |
| quantification | if the API determines something numerically |
| notification   | if the API only publishes information |
| communication  | if the API concerns bi-directional exchange of information, where there is no mutation of the related business object (question-answer) |

In some cases, other API names can also be used if the standard
classification according to NBility is not sufficient. This is the case, for example, if:
- Level 3 is still too coarse. For example: the further subdivision of Power Generating Modules into Type A and Type BCD
- If the API unlocks multiple resources that are classified under different objects in NBility. For example: the EAN codebook API contains both the grid operator name (object 6.1.1 market-participant) and the EAN18 of the connection (object 6.2.1 connection)

#### Version within \<Path\>

The URI attribute \<version\> specifies the version number of the API. This attribute consists of
the letter "v" followed by a number. This number is the major version number of the API. The
version number starts at 1 and is incremented by 1 for each major release where the interface
changes (and backward compatibility is not guaranteed). Minor version numbers are in the
message itself. Adding a non-mandatory attribute to the payload is an example of a
change that is backward compatible.

#### Collection within \<Path\>
The subdivision into collections is necessary to distinguish the different resources that belong 
to one API from each other. This is the lowest level of resources.
Following others, such as Google, this is called a collection. The URI component
\<Collection\> identifies the collection resources from which data is returned. A collection
is comparable to classes in object orientation and the objects are the actual resources.

There are several options for determining the names of collections or resources:
1. Definitions from Dutch/European legislation
2. Definitions from the CIM
3. Definitions from NBility
4. Determined by a delegation of network operators and EDSN

| Option | Advantages | Disadvantages |
| --- | --- | --- |
| Definitions from Dutch legislation | Best suited to the Dutch situation | Often based on the Dutch language|
| Definitions from the CIM | Best suited to international applications | Definitions may differ from the Dutch situation, which can be confusing|
|Definitions from NBility | Best suited to the capabilities of the network operators.<br/>With increasing use of NBility, the recognisability and positioning as a whole, increases | NBility is not intended to provide for all situations (such as, for example, composite APIs where resources from multiple domains are made available)|
|Self-determination by a delegation of network operators and EDSN | Can always be applied, for example if standards or models do not (cannot) provide for this | Requires additional definition/explanation because reference cannot be made to standards or models|

Because resources occur in many different contexts and their meaning depends on the context in 
which they are used, no choice is made here for one of the options,
but a preference for application in the given order.
When naming resources, Dutch legislation therefore prevails over the definitions from the
CIM standard, which in turn prevail over the business objects from NBility. The last option is to choose a resource name yourself (by a delegation of network operators and EDSN) if the models/standards do not (cannot) provide for this. This name will then have to be explained to the users.
The name of a resource will have to be determined by a delegation of network operators
and EDSN. Currently (early 2023), this task lies with the WG API Strategy, which, in addition 
to the name, also checks the specification of APIs for the CMF domain, for the correct application 
of the API and URI guidelines.

### Result for \<Path\>

The choices made in this section result in the following structure of the component \<Path\>:

```
/<root level>/<sublevel 1>/<sublevel 2>/<API name>/<version>/<collection>
```
{: .boxed }

For the filling of the resources of a collection, it is best to use existing
standards or models. This filling will always be stated in the plural form.