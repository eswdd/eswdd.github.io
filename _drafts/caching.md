---
layout: post
title: Caching
---
{% include JB/setup %}

I've been meaning to write a post about caching for some time. In fact I promised the then head of SRE at Betfair I'd write an internal article about 18 months ago, somehow I never got around to it, guess I never will now, but I can blog about it.

Yet another caching post? Well yes, there are a lot of posts and articles about caching, and yet I never really see any that cover the breadth and depth of the topic in a single go or series. Plus I'm not doing well on my quota of 12 posts in one year - it's the middle of the year and I've done one so far (admittedly having a child rather changed my free time arrangements - ie I now have none).

So where to start? Let's try the beginning.



 * purpose
  * faster data access
  * protect data store
  * both
 * simple caching
  * sizing
  * invalidation
  * updating: read through/ahead/aside
 * distributed caches
  * back nodes/front nodes
 * more complex models
  * patching (delta caching)
  * pub-sub
  * sharding (see back nodes)
  
