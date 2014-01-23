---
layout: post
title: "I should have known"
description: ""
category: 
tags: [books]
---
{% include JB/setup %}

So, it's been a while since I posted anything on my blog, but I feel like having another go. I found a couple of old posts I'd been working on before I apparently gave up, so I thought I'd pop them up since I put the effort into writing them in the first place...
 

I bought myself a book recently, [Pattern-Oriented Software Architecture Volume 4: A Pattern Language for Distributed Computing](http://www.amazon.co.uk/gp/product/0470059028?ie=UTF8&tag=exemel-21&linkCode=as2&camp=1634&creative=19450&creativeASIN=0470059028), and I should have known better than to think I could find a single book covering DC patterns.

Part of my problem is the definition of distributed computing. I know you can implement a distributed system by hiding the details that a service is remote from the calling code, or by using some middleware solution, but that's just taking the old J2EE approach - hide the details, use a framework, take the hassle away from the developers.

But I've done that, and whilst it basically works for building basic enterprise systems, you can never entirely hide the details, you just try to ignore them without worrying about the consequences. So if you can't ignore the details, then surely you have to embrace them. So for me, distributed systems is learning about the hard and big stuff, things like leader election, gossip protocols, CAP, BASE, byzantine failure. But not only what these concepts mean, I also want to know how to implement them, what the tradeoffs are, what's best to use in what scenario, what I have to consider.

And so, back to my default mode of operation, I want a book that will describe it. And whilst I know in my heart that I'm probably not going to find one, I'm still going to buy books until I find it. Hence the purchase of the aforementioned book. Lo and behold - it's not what I'm after.

To it's credit, it contains many patterns that will appeal to the kind of developer I used to be. It talks about MOM and pub-sub, about RPC and hiding the fact that RPC is actually happening. There was one chapter that held patterns that were promising to me, entitled "Component Partitioning", covering situations where objects need to be distributed. But then I read the text:

> Divide the objects into multiple 'half objects,' one for each address space in which they is used. Each half object implements the functionality and data required by the clients that reside in 'its' address space. A protocol between the half objects helps to coordinate their activities and keep their state consistent.

Now aside from the grammatical errors (theirs not mine), there's a worrying statement around consistency. From reading about CAP, I know that you sometimes need to trade off consistency, but this pattern assumes that your state is always consistent, this is reinforced later:

> The greater the need for distributed computation, and the more data that needs to be exchanged via the protocol, the less beneficial a Half-Object plus Protocol design becomes. As a general rule of thumb, duplication of internal state should be reduced to minimize the need for data exchange and synchronization via the protocol.

But:

> The concrete design of the protocol betweeb the half objects depends on what particular coordination they need. Simple data exchange protocols can be based on an Observer design to avoid unnecessary updates and coordination activities. Actions that the half objects in the arrangement can invoke on one another can be encapsulated into Commands or Messages, to keep the protocol independent of a specific action set.

Reading this with my new awareness makes me think the book is hinting at the ability to trade consistency for other benefits, but it's not explicit. Which is enough to make me think this book is no good for me, not that I can't learn some useful patterns, but that it doesn't spell out the tradeoffs they're offering me. It also makes me wonder whether this book is good for the old me - should developers be allowed to continue living in the Matrix, shouldn't they be forced to swallow the [red pill](http://en.wikipedia.org/wiki/Redpill)?

One other example before I leave it for today... The next pattern is called "Replicated Component Group". It is described starting with the problem:

> Some components in a system must meet high availability and fault tolerance requirements, in particular if they execute or coordinate central activities, such as a directory service in a telecommunications system. Brute force solutions to this problem, however, such as complete hot or cold stand-by system replication, are often too expensive for many applications due to their high total cost of ownership.

Ok, good start, we continue with the solution:

Provide a group of component implementations instead of a single implementation, and replicate these implementations across different network nodes. Forward client requests on the component interface to all implementation instances, and wait until one of the instances returns a result.

Wait, this sounds like a [paper](http://www.cs.cornell.edu/fbs/publications/SMSurvey.pdf) I glanced through recently. Unfortunately that's where the book stops. The paper goes into somewhat more detail, unearthing an important piece of information with regard to this pattern. The pattern is assuming fail-stop failures - it's invalid if the instances can suffer Byzantine failures. A quick trawl of the index finds no reference to Byzantine failures, which is worrying, given that they are [real](http://status.aws.amazon.com/s3-20080720.html).

Finally, perhaps the book covers the kinds of things I'm interested in, let's try the index... Alas, no entries for consistency, availability or network partitioning. I'll be sending the book back to Amazon tomorrow...
