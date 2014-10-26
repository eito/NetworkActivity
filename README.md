NetworkActivity
===============

A simple object to help manage turning on/off the iOS network activity indicator using Swift and serial queues.

Usage
=====

```swift

// Place the call to start inside your network operation's start method or before you 
// kickoff an NSURLConnection
NetworkActivity.start()

// Call stop whenever an operation is cancelled or finishes
NetworkActivity.stop()
```
