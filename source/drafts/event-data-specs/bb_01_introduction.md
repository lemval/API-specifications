
## Introduction

The CoP SA Vision Document [\[10\]](../references.html) recommends adopting Event Driven Architecture (EDA) as a valuable
pattern for optimizing data exchange in the energy domain. This
vision provides a basis and guideline for further elaboration (for example a guideline or a concrete
implementation) to fully utilize the benefits of Event Driven Architecture. The
Vision Document is in line with the vision of the Dutch government: for example, in 2022 the
Notification Services Project [\[11\]](../references.html) was carried out by 'VNG Realisatie' on behalf of the 
Ministry of Internal Affairs. The aim of the project was to standardize automated notification 
of applications within the Dutch government and to be able to work better and more often 
event-driven as a government.

This document is in line with this vision and is a further concrete elaboration of it. The main 
purpose of this document is to define a specification for describing event data,
or events, which we will further refer to as the **Event Data Specification**. This specification 
was developed for the energy sector by the API Strategy Working Group on behalf of Het Normo.

To carry out this assignment, the API Strategy Working Group sought cooperation with the 
[API Knowledge Platform](https://developer.overheid.nl/communities/kennisplatform-apis), or in Dutch _Kennisplatform API's_, which has been commissioned to develop a government-wide usable 
message format for notifications. The API Knowledge Platform aims to promote cooperation 
between parties that work with APIs and standards within the government and
knowledge platform participant 'VNG Realisatie' was involved in the aforementioned project
Notification Services (2022) that was commissioned by the Ministry of Internal Affairs.

One of the products of the Notification Services project is the NL GOV profile for CloudEvents
[\[12\]](../references.html).
This is a specification for the standardized description and exchange of data about
occurring events. The profile builds on the [CloudEvents specification](https://cloudevents.io/) that was
developed by the [Serverless Working Group](https://github.com/cncf/wg-serverless) of the [Cloud Native Computing Foundation](https://www.cncf.io/). 

The basis of CloudEvents is a specification for the standardized description of
event data. In addition, standards have been (and are being) developed that describe
how the specification can be applied when using specific data formats and
transport protocols. The objective is to increase the interoperability of services, platforms and
facilities worldwide.

The NL GOV profile for CloudEvents [\[12\]](../references.html) contains agreements on the use of the CloudEvents 
specification within the Dutch government. It has been agreed how government organizations
use certain attributes. In this way, international standardization is used in the government.

This is supplemented with agreements that are necessary or desirable within the Dutch context.

CloudEvents is a standardized and protocol-neutral definition of the structure and metadata description of events. The CloudEvents message standard defines a set of metadata
('context attributes') about events that are transferred between applications and the way
in which the metadata must be included in exchanged messages. Based on
existing metadata, events can be filtered and routed in a standardized way towards
consuming applications ('consumers'). Consumers can use the metadata in provided events
for processing. Where necessary, own, e.g.
domain-specific attributes can be defined in the form of 'extended attributes' and included in messages.

In this Event Data Specification document, metadata ('context attributes') and content
message data ('payload attributes') are clearly and recognizably distinguished. 

This Event Data Specification document is based on the NL GOV profile for CloudEvents [\[12\]](../references.html) and is a sector-specific interpretation for the energy sector. It focuses on the specification of the
mandatory 'context attributes', the recommended file size and case convention of an event. The
guidelines for this are described and explained in the following paragraphs.
