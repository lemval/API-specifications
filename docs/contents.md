With these guidelines, the API Strategy Working Group aims to establish a set of best practices and standards for designing, developing, documenting, and maintaining APIs specific to the Dutch energy sector.

## Publications

**[URI Strategy](uri-conventions/)** - Guidelines for the consistent structure of URIs and resource naming in RESTful APIs  
**[API Design Rules](api-design-rules/)** - Guidelines for creating clear, consistent, and developer-friendly APIs  
**[Event Data Specification](event-data-specs/)** - Specification of Event Metadata  

## Drafts (upcoming)
<span class="draftPopup">Note: this is a draft!</span>
**[Event Data Specification](drafts/event-data-specs/)** - Specification of Event Metadata
{: .draft }

## How to read the guidelines

Guidelines for architecture and design of the integration are not given here. However, it is advised to first determine the overall interaction between systems.

When starting to develop an API for the Dutch energy sector, first determine which resource (and operations on this resource) you need to disclose. The [URI Strategy](uri-conventions/) can be a helpful resource for your design.

When setting up a REST/JSON-based API specification (OAS spec), the [API Design Rules](api-design-rules/) are here to guide and direct you.

If you are defining messaging, the [Event Data Specification](event-data-specs/) should be used to aid you in the metadata of the event. For the actual data payload you can use the aforementioned rules.

## Suggestions

If you see a typo or like to suggest an improvements, please [raise a ticket]({{ site.github.issues_url }}). Please include the URL of the page on which you comment on (as deep link).

Publications are made available to the public under the following [LICENCE]({{ site.github.repository_url }}/blob/main/LICENSE).
