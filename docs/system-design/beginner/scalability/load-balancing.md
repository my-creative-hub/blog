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

<ul>
    <li>Fundamentals</li>
    <li>OSI layers and L4 vs L7</li>
    <li>Load balancing algorithms (with examples!)</li>
    <li>Placement in architecture</li>
    <li>Advanced and specialized types (with practical analogies)</li>
</ul>

Let's dive in.

---

## What Is Load Balancing?

Load balancing is the process of distributing incoming network traffic across multiple servers to ensure no single server becomes overwhelmed. The goals are:

<ul>
    <li><strong>Scalability:</strong> Accommodate growing traffic.</li>
    <li><strong>High availability:</strong> Ensure the system is resilient to failures.</li>
    <li><strong>Performance:</strong> Reduce latency and increase throughput.</li>
</ul>

🎢 <strong>Real-life analogy:</strong> Think of a theme park with five ticket booths. If everyone queues at one booth, it creates delays. A supervisor at the entrance sends guests to the booth with the shortest line. That’s load balancing.

---

## OSI Model and Load Balancing Layers

### The OSI 7-Layer Model

| Layer        | Number | Description                                        |
| ------------ | ------ | -------------------------------------------------- |
| Physical     | L1     | Transmits raw bits over the network (cables, etc.) |
| Data Link    | L2     | Manages frames (e.g., Ethernet, MAC addresses)     |
| Network      | L3     | Routes packets using IP addresses                  |
| Transport    | L4     | Delivers messages with TCP/UDP                     |
| Session      | L5     | Manages sessions and connections                   |
| Presentation | L6     | Handles encryption and encoding                    |
| Application  | L7     | Interfaces with end-user apps (HTTP, FTP, etc.)    |

### L4 vs L7 Load Balancing

| Feature       | L4 Load Balancer          | L7 Load Balancer                    |
| ------------- | ------------------------- | ----------------------------------- |
| Operates On   | TCP/UDP (Transport Layer) | HTTP/HTTPS/gRPC (Application Layer) |
| Routing logic | IP, port                  | URL, headers, cookies               |
| Speed         | Fast, efficient           | More flexible, but slower           |
| Use Case      | Database, game servers    | Web apps, APIs                      |

---

## Load Balancer Placement

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

---

## Load Balancing Algorithms (Deep Dive with Examples)

### Round Robin

The Round Robin algorithm assigns incoming requests to servers in a circular order, without considering the current load or performance of the servers. It simply rotates through the list: server A, then B, then C, and loops back to A.

This approach works well when all servers are equally capable and requests are relatively uniform in cost. For example, in a stateless REST API where each request is short-lived and does similar work, round robin can be both efficient and fair.

🎢 <strong>Analogy:</strong> Think of a rotating sushi bar. Dishes are placed on a conveyor belt, and each customer takes the next one that comes by. Every server gets its turn, regardless of how busy they are.

### Least Connections

Unlike Round Robin, the Least Connections algorithm is dynamic. It examines which server currently has the fewest active connections and forwards the request there. This is especially useful when requests can vary in duration.

Imagine you're routing incoming chat sessions to customer support agents. One agent may already be handling three conversations, while another is free. Least Connections ensures the second agent gets the next one.

⚙️ This method requires the load balancer to maintain real-time awareness of connection states.

### IP Hash

IP Hash creates a deterministic mapping between a client IP address and a backend server using a hash function. This ensures that requests from the same user consistently go to the same server (assuming the server list remains stable).

This strategy is beneficial when session persistence or affinity is important. For example, an online shopping app might keep the cart in server memory. Routing the same user to the same server ensures a consistent experience.

🎢 <strong>Analogy:</strong> Assigning students to lockers based on the hash of their names. Every student knows exactly which locker is theirs.

### Weighted Round Robin

Weighted Round Robin extends the basic round robin by assigning weights to servers. A server with a weight of 3 will receive 3 requests for every 1 received by a server with a weight of 1. This makes it ideal when server capacities are unequal.

Let’s say you have three backend servers: A (high-end), B (medium), and C (low-end). You assign them weights of 5, 3, and 2 respectively. The traffic distribution now reflects their performance potential.

🎢 <strong>Analogy:</strong> At a busy post office, faster clerks serve more customers. You assign 5 tickets to the most efficient clerk and only 2 to the trainee.

### Weighted Least Connections

This hybrid method combines real-time connection count with server weighting. It first considers the number of current connections and then factors in server capacity to distribute load optimally.

If two servers are under similar load but one has double the capacity, weighted least connections ensures the stronger server still gets more traffic.

⚙️ This approach requires continuous monitoring and is common in advanced enterprise-grade load balancers.

### Random with Two Choices

This lesser-known but elegant strategy randomly selects two servers and assigns the request to the one with fewer active connections. Surprisingly, this "power of two choices" method yields excellent load distribution with minimal computation.

🎢 <strong>Analogy:</strong> You're choosing between two checkout lines at random and picking the shorter one. It doesn’t guarantee the best possible choice—but it's fast, simple, and effective.

⚙️ <strong>Used in:</strong> Systems where speed matters more than perfect balancing (e.g., CDN edge servers).

---
