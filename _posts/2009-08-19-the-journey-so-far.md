---
layout: post
title: "The journey so far..."
description: ""
date: 2009-08-19 22:54:00
category: 
tags: [distributed computing, failure]
---
{% include JB/setup %}

**Historical note:** *This post written under the previous blog name 'Diary of a Distributed Virgin'*

Funnily enough, I didn't wake up one day and decide that I needed to learn about distributed systems. I did wake up one day (Tuesday to be precise) and decide to blog about the process, but that's another thing entirely - in fact it came to me whilst cycling home from work. I like cycling.

So there was a start, but the start was vague. I'll try to explain...

In the beginning there was a developer (me), and I'd worked on systems that Ithought had to really scale: I thought that capacity meant 2000 active users, and that high transaction rates meant 20 requests per second and I thought that scaling meant running on 2 machines with shared session state and a shared DB.

Then I moved to [Betfair](http://www.betfair.com), and discovered 10000 active users, 100 tps and 10s of servers with distributed caches and a shared DB.

And then [Werner Vogels](http://www.allthingsdistributed.com/) came to visit and described [Amazon](http://www.amazon.co.uk/): millions of users, thousands of servers, SOA, the cloud and no sign of a shared DB. And at the time, this sounded cool, but not only out of reach, just a bit excessive for the developer's needs.

Around the same time, I started work on an integration of an external vendor to deliver [games](http://arcade.betfair.com/) to Betfair's customers. During that time I started to talk to [Dan Creswell](http://dancres.org/), and he introduced concepts such as service lookup and thinking about failure. So we stumbled through, built a bunch of services, thought a bit more about what we were doing, and how we were doing it, and why we were doing it that way. To cut a long story short, the project was a [success](http://www.casinoadvisor.com/betfair-launches-arcade-portal-news-item.html), both from a technology perspective and from a [business](http://www.yogonet.com/english/2009/08/06/betfair-posts-another-record-year-of-results) perspective.

And from a personal perspective - I'd seen there can be another way... Alright, our services still talked to a single shared DB, but there were noticeable improvements:
 * Multiple nodes in different datacentres, all active at the same time
 * Clients finding services without using static configuration
 * Clients expected failure and dealt with it
 * We'd tested for failure
 
So, project over, I moved to another team. As is often the case, you join a new team and think how much better you could have written the system if you started now. Reverting to type, off we go looking for a framework... enter grid computing. I'll leave the detail for another post, but suffice to say, there was the silver bullet - and then realized it wasn't. It was good, well suited to some problems in the online gaming world, but I didn't fully understand the fundamentals to understand the explanation from colleagues. I read about Erlang, played with it briefly, but knew that there was no way a [company](http://blog.smarkets.com/2009/07/03/smarkets-tech-talk-on-erlang/) would base a major part of it's product suite on such an obscure language.

Around the same time, I read [this](http://www.allthingsdistributed.com/2007/07/job_opening_for_a_senior_resea.html) blog posting from Werner and set out to find that reading list and get going on understanding those fundamentals...
