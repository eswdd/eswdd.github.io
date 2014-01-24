---
layout: post
title: "Where&#8217;s the manual?"
date: 2009-08-19 22:35:00
description: ""
category: 
tags: [grid computing]
---
{% include JB/setup %}

Let's start with an admission. I'm a Java developer. Just a Java developer\*. I've only ever coded serious applications in Java (by serious I mean >1000 lines and not written for some university coursework). I like to think I'm a reasonable developer, not the best I know, but definitely not the worst either. I also like to think I'm not just a servlet dude, but my default behaviour (which is hard to change) when encountering some new concept is to ask: Where's a [free](http://www.gnu.org/philosophy/free-sw.html) library I can use to do this now? Where's the [getting](http://struts.apache.org/2.x/docs/bootstrap.html) [started](http://www.sitepoint.com/article/java-servlets-1/) [guide](http://www.informit.com/guides/content.aspx?g=java&seqNum=447)?

So, onto distributed computing systems. I know I need to distribute my software to [scale](http://www.mvdirona.com/jrh/talksAndPapers/JamesRH_Lisa.pdf) to internet volumes. I know I need to think about failure - of machines, of racks, of [datacentres](http://www.facilitiesnet.com/datacenters/article/Crash-Data-Center-Horror-Stories--5390), of [countries](http://news.bbc.co.uk/1/hi/technology/7792688.stm). I know I need to distribute my application onto many nodes in order to solve these problems, and I know that simple [J2EE clustering](http://oreilly.com/catalog/jservlet2/chapter/ch12.html#32026) just ain't gonna cut it. So I need something better, so where's that damn library?

Well, if only it were so simple. Don't get me wrong, there are things out there that might help, products that are being touted as the solution to all my ills, the likes of Terracotta, Gigaspaces, Coherence Grid. But they almost sound like a [silver bullet](http://en.wikipedia.org/wiki/No_Silver_Bullet), and we all know they don't exist, don't we?

So, onto my next default behaviour when I don't want some vendor touted solution, drop down a level. Where are the design patterns for this new idiom? Well, as yet I haven't found a [GoF](http://www.amazon.co.uk/gp/product/0201633612?ie=UTF8&tag=exemel-21&linkCode=as2&camp=1634&creative=19450&creativeASIN=0201633612) for distributed systems. OK, so go lower, lets learn about the underlying concepts, lets ask someone who knows what they're talking about for a good book:

> "Well, there's the [red](http://www.amazon.co.uk/gp/product/0521876346?ie=UTF8&tag=exemel-21&linkCode=as2&camp=1634&creative=19450&creativeASIN=0521876346) book and the [black](http://www.amazon.co.uk/gp/product/1558603484?ie=UTF8&tag=exemel-21&linkCode=as2&camp=1634&creative=19450&creativeASIN=1558603484) book. They're both good books, but the black one has more maths. Oh and the company has a copy of the red book."

A quick glance through the book confirms my fear - I'm gonna need to learn some theory. Onto my second admission - I'm not too hot on computer science theory. Quite frankly, those kinds of courses at uni I found dull, didn't listen to the lectures, and generally found [something](http://www.camra.org.uk/) better to spend my time on.

And that's where the story begins. This blog is my journey through the theory and (at some point) the implementation of distributed systems. The blog is for me to chart my course, but if you like it, tell me. If I get something wrong, tell me more.

Thanks for listening.

\* OK, so I also play at being an architect and have been known to lead teams, but it spoils the effect.
