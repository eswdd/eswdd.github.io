---
layout: post
title: "Poker, FSMs &amp; Grid Computing"
description: ""
category: 
tags: [fsm, grid computing, poker]
---
{% include JB/setup %}

As mentioned earlier, I've had the privilege of spending some time working in online Poker. To change a system built for one set of non-functional requirements, to another set of much more challenging ones is rather hard. This got myself and my team thinking about ways to build a system from scratch (it's always nice to dream). Thankfully, being a little more risk averse to the average cowboy developer, and not wanting to throw away production hardened code, we've decided to take a different approach. Which means I can talk about the grand ideas that were...  

My team had long discussed Poker in terms of it's inherent ability to distribute (down the pub over beer). On the most basic level, Poker consists of players on tables, which sometimes are part of tournaments. In theory, you could stick every table on a different server, and as long as the players knew where the tables that they were playing on were located, then you could scale ad infinitum. Additionally, the logic of a hand of Poker, in addition to the times (or states) in which you can join/leave/raise/fold are well defined, lending Poker to FSMs as a mechanism for implementation.  Couple all this with a wee [paper](http://hillside.net/plop/plop2001/accepted_submissions/PLoP2001/ybyun0/PLoP2001_ybyun0_1.pdf) concerning communicating state machines, one of a number of grid products on the market, and in theory you've got a simple way to build big Poker systems. So where's the catch?  

Well. Obviously it's not quite so simple. There are a couple of niggles:
 * Grid products tend not to like spreading the grid across WANs, so you have to find a way of replicating state to a hot standby to deal with data centre failure.
 * Poker is subject to some quite complex regulatory pressures, which may require data to be geographically located in a particular country (of which you can be certain there will be more than one of - forcing you to run in multiple data centres concurrently).
 * Grid products mean you don't have to worry where your data is, the grid will route requests for you. But if your tables could be in one of many connected grids, you'll have to do that routing yourself.
 * You can't show cards or bets to players, fail and then send them something different to what they've already seen. Outgoing communications have to be latched at certain points once sufficient nodes have received the updates to the machine state.
 * Certain events in Poker (such as blind levels in tournaments) are time based, which means you're going to need some kind of distributed event generation mechanism.
 * Player actions are bound to a state, but clients allow you to pre-choose a set of actions (e.g. check/fold), so you're going to need to support out of band events.

None of these issues are insurmountable, we solved them on paper, but I won't tell you how. If you solve them you can scale your Poker system to vast proportions. There is still one problem you can't solve with technology:
 * You need to attract players to your system above all others. That's a problem that will require cash, and lots of it...

PS. If anyone's got the cash, I'll happily build the system.
