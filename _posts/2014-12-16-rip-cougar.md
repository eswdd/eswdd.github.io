---
layout: post
title: RIP Cougar?
description: ""
date: 2014-12-16 07:27:00
category: 
tags: [cougar]
---
{% include JB/setup %}

Open source Cougar is dead. Or at least appears to be.

I think this is a great shame. For me. For Betfair.

I haven't spoken about Cougar yet. I had planned to, in those 12 posts I was going to write this year. Instead I spent most of the year writing features for Cougar, trying to round off it's functionality before promoting it more widely. This might have been a mistake. Maybe it wouldn't have mattered whatever I had done.

So let me tell you about Cougar. Someone once asked me for an elevator pitch, I didn't even have to think about it: "It makes writing services easier”. Simple. A little more? It abstracts away concerns of transports, monitoring, configuration, security and frees up the service developer to worry about just their logic. Call it a service container if you will (or more accurately a service interface container). It provides consistency across your estate, ensuring that all services can talk to each other, and all they have to do is define their interface(s).

Cougar is about 5 years old, maybe a little more. It was born at the beginning of a massive internal re-architecture at Betfair, moving from a single monolithic J2EE application to a service oriented architecture. We rewrote the core around 4 years ago to be entirely async (previously it had an async transport but synchronous core), expanded it’s capabilities beyond RPC to support blind event subscriptions and replicated objects, improved the security model, added a binary transport and a whole bunch of other stuff. Read more on it’s incomplete [site](http://betfair.github.io/cougar).

Then I took voluntary redundancy from Betfair, but during my notice period, got permission from a forward-thinking [CTO](http://phildixon.org) to open source Cougar. It was a pretty herculean effort (even if I say so myself) to clean up the code, split the bits remaining internal to those going out, getting full security review and pen testing, migrating [the](http://github.com/betfair/tornjak) [various](http://github.com/betfair/virtualheap) [projects](http://github.com/betfair/cougar) to Github, moving CI to [Travis]() etc etc. But I did it. Cougar left the building before I did, I left a team managing Cougar, but still maintained commit rights. I was a happy bunny.


So what went wrong?
-------------------

In-sourcing. Cougar was handed over to a team in a satellite development office. I don’t know which team, I don’t even have their names, I do know which office. I found out that it had moved from some ex-colleagues. And then the silence started. I haven’t received a shred of communication from this team, either publicly or privately. I continued working on Cougar off and on, a few interactions with teams in other locations led me to believe that Cougar was alive and well. Until I received a comment on one of the [issues](https://github.com/betfair/cougar/issues/74#issuecomment-47584141), which alluded to Cougar development continuing from the point before we started open-sourcing. Why would anyone do this? At least take advantage of the bug fixes (including security), maintainability improvements and desirable features from the open source version.

To cut a long story short, this [unilateral decision](http://eswdd.github.io/2014/12/04/unilateral/) is to remain in place. I don’t know why. I’m not party to that information, it’s private to Betfair. I don’t know the reasons for ignoring the open source version. That also is private. I only have one piece of information, a name. Yes, I know I said I didn’t have any names, I didn’t at first, and I’m not sure this guy is in the team, when I left the company he was a Programme Manager (read Senior Project Manager if you’ve never heard of that) - surely someone in that role wouldn’t be taking these kinds of decisions, they’re facilitators right? Well, I have a name, so I’ve sent him an email. Yes, probably not the wisest thing, but anyone who knows me knows I’m a bit passive aggressive (ok, maybe a lot), and hey, it can’t do any harm right? (Unless I get myself sued, so I’ll try not to do that). People who do know me will be impressed at the restraint. Here it is:

> Hi ______,
> 
> I just wanted to write to say thank you for taking the time to keep me in the loop regarding your
> plans for Cougar. Obviously I never expected to have a say in the decision, but it was good to be
> able to verify the assumptions being made and to see you trying your best to ensure that
> Betfair’s investment in open source Cougar wasn’t squandered.
>
> Most of all though, I’d like to thank you for the professional courtesy in ensuring I didn't 
> waste a year of my time and the accompanying emotional investment contributing to a dead branch.
> 
> Kind regards,
> Simon

I haven’t had a response yet. I don’t know if I will. Even if I do I probably won’t publish the response, if any. Seems like a surefire way to get sued.

So what now?
------------

Well, I’m mid-way through some reasonably large changes for 3.2.0, so at least to satisfy my own desire to see things tied up nicely I intend to complete this release. Albeit it might get cut down in scope now. I might even send the release notification to Mr _____ at Betfair ;)

As for the future, I haven’t really decided. If I continue with Cougar I’ll have to change the name. I quite like Disco, which incidentally was Cougar’s original name (hence the DSC codes for exceptions) (ok, it was actually Data Services Container first, but it didn’t take long for someone to insert the vowels) - which would be quite cool as I can change the core error message “Panic in the Cougar” to “Fire in the Disco” :D

I’ve been meaning to implement [Communicating Extended Finite State Machines](http://hillside.net/plop/plop2001/accepted_submissions/PLoP2001/ybyun0/PLoP2001_ybyun0_1.pdf) for some time. It seems reasonable to use Cougar as a base, I might integrate a [Raft](https://raftconsensus.github.io/) library to provide consensus (I once integrated a [Totem](http://www.ict.kth.se/courses/2G1126/vt03/papers/amir95totem.pdf) [implementation](https://code.google.com/p/evs4j/) for a similar purpose, but it never made it to the mainline codebase). But we’ll see. I suspect I’ll never do all that doco I had planned to rewrite now, and I’ll probably never publicise Cougar like I planned, but let’s see if we can at least get some use out of all that work. 

At least I can finally ditch [SOAP](http://betfair.github.io/cougar/whats-wrong-with-soap.html)!
