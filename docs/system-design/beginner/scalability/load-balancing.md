---
date:
  created: 2025-05-02
categories:
  - System Design
tags:
  - Load Balancing
  - OSI
  - High Availability
slug: load-balancing
---

# 🌐 Mastering Load Balancing: The Foundation of Distributed Systems

Load balancing is one of the most critical components in designing scalable, resilient, and performant distributed systems. Whether you're preparing for a technical interview or architecting enterprise-scale infrastructure, understanding load balancing deeply gives you a competitive edge.

This blog post is your ultimate guide to load balancing, covering:

<!-- more -->
<ul>
    <li>Fundamentals</li>
    <li>OSI layers and L4 vs L7</li>
    <li>Load balancing algorithms (with examples!)</li>
    <li>Placement in architecture</li>
    <li>Advanced and specialized types (with practical analogies)</li>
</ul>

Let's dive in.

---

## 🚦 What Is Load Balancing?

Load balancing is the process of distributing incoming network traffic across multiple servers to ensure no single server becomes overwhelmed. The goals are:

<ul>
    <li><strong>Scalability:</strong> Accommodate growing traffic.</li>
    <li><strong>High availability:</strong> Ensure the system is resilient to failures.</li>
    <li><strong>Performance:</strong> Reduce latency and increase throughput.</li>
</ul>

🎢 <strong>Real-life analogy:</strong> Think of a theme park with five ticket booths. If everyone queues at one booth, it creates delays. A supervisor at the entrance sends guests to the booth with the shortest line. That’s load balancing.

## 🧱 OSI Model and Load Balancing Layers

### 📦 The OSI 7-Layer Model

| Layer        | Number | Description                                        |
| ------------ | ------ | -------------------------------------------------- |
| Physical     | L1     | Transmits raw bits over the network (cables, etc.) |
| Data Link    | L2     | Manages frames (e.g., Ethernet, MAC addresses)     |
| Network      | L3     | Routes packets using IP addresses                  |
| Transport    | L4     | Delivers messages with TCP/UDP                     |
| Session      | L5     | Manages sessions and connections                   |
| Presentation | L6     | Handles encryption and encoding                    |
| Application  | L7     | Interfaces with end-user apps (HTTP, FTP, etc.)    |

### 🔍 L4 vs L7 Load Balancing

| Feature       | L4 Load Balancer          | L7 Load Balancer                    |
| ------------- | ------------------------- | ----------------------------------- |
| Operates On   | TCP/UDP (Transport Layer) | HTTP/HTTPS/gRPC (Application Layer) |
| Routing logic | IP, port                  | URL, headers, cookies               |
| Speed         | Fast, efficient           | More flexible, but slower           |
| Use Case      | Database, game servers    | Web apps, APIs                      |

## 🛠️ Load Balancer Placement

Typical placement in an architecture:

```py
Client
|
[Load Balancer]
|
[Server1] [Server2] [Server3]
```

You can place load balancers:

<ul>
<li>At the frontend (between client and app)</li>
<li>Between services (microservices)</li>
<li>In the backend (between app and database replicas)</li>
</ul>
