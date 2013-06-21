Zoom.Quiet wanted to see how to build a download link counter. This is a rails implementation.

[Link to conversation on Google Groups](https://groups.google.com/forum/#!topic/angular/GEEOnNeE-F0)

![First](images/first.png)
On first load of the page, init method calls refresh() which refreshes download number from server

![Second](images/second.png)
After a click, download counter is adjusted on client side and sent to server.

![Third](images/third.png)
After request is made, then call window.location.href to send the user to the link


