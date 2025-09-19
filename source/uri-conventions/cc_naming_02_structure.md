### Mandatory structure of URIs
The basic structure of the Het Normo API URIs follows the internet standard RFC3986:

```
<Protocol>://<Authority>/<Path>[?<Query>][#<Fragment>]
```
{: .boxed }


| Component | Explanation |
| --------- | ----------- |
| \<Protocol\>               | Indicates the protocol with which the URI can be reached, for example "https" or "ftps".|
| \<Authority\><br/>(domain part)| The authority (or domain name) for APIs. This part shows the location within the internet domain.|
| \<Path\><br/>(resource part)   | The unique path that identifies a resource or indicates a location of a resource within the domain part. The parts within \<Path\> are separated by a slash ("/"), with which the resource can be further categorized hierarchically. |
| \<Query\>                  | This part contains non-hierarchical data that, together with \<Path\>, identifies the resource. This often involves parameters that act as a filter.|
| \<Fragment\>               | A fragment identifier is an identifier of a resource that is subordinate to another primary resource.|

The generic structure above will be used as a starting point for specifying the REST URIs.
