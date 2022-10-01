
class Failure{
  int code;
  String message;
  Failure(this.code,this.message);
}
/*codes
---------------------------------
Informational responses (100–199)
100 Continue
101 Switching Protocols
102 Processing (WebDAV)
103 Early Hints
---------------------------------
Successful responses (200–299)
200 OK, The request succeeded.
201 Created
202 Accepted
203 Non-Authoritative Information
204 No Content
205 Reset Content
---------------------------------
Redirection messages (300–399)
300 Multiple Choices
301 Moved Permanently
302 Found
303 See Other
304 Not Modified
305 Use Proxy
306 unused
307 Temporary Redirect
308 Permanent Redirect
---------------------------------
Client error responses (400–499)
400 Bad Request
401 Unauthorized
402 Payment Required
403 Forbidden
404 Not Found
405 Method Not Allowed
406 Not Acceptable
407 Proxy Authentication Required
408 Request Timeout
409 Conflict
410 Gone
411 Length Required
412 Precondition Failed
413 Payload Too Large
414 URI Too Long
415 Unsupported Media Type
416 Range Not Satisfiable
417 Expectation Failed
418 I'm a teapot
429 Too Many Requests
431 Request Header Fields Too Large
451 Unavailable For Legal Reasons
-----------------------------------
Server error responses (500–599)
500 Internal Server Error
501 Not Implemented
502 Bad Gateway
503 Service Unavailable
504 Gateway Timeout
505 HTTP Version Not Supported
506 Variant Also Negotiates
507 Insufficient Storage (WebDAV)
508 Loop Detected (WebDAV)
510 Not Extended
511 Network Authentication Required

*/

