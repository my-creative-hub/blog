# ☁️ Real-World Load Balancing Services: AWS ALB vs NLB vs ELB

Cloud platforms provide managed load balancers that abstract away infrastructure management and offer high availability out of the box. AWS is one of the most widely used cloud providers and offers three main types of load balancers:

## 1. Application Load Balancer (ALB)

- <strong>Layer:</strong> L7 (Application Layer)
- <strong>Routing:</strong> Path-based, host-based, header-based routing
- <strong>Use Case:</strong> Web applications, microservices, containerized apps (ECS, EKS)
- <strong>Features:</strong>
  - Content-based routing
  - Native WebSocket support
  - WAF integration
  - Redirects and fixed responses

🎯 <strong>Example:</strong> Route /login requests to an Auth microservice and /checkout to Payments service based on URL path.

---

## 2. Network Load Balancer (NLB)

- <strong>Layer:</strong> L4 (Transport Layer)
- <strong>Routing:</strong> IP and port-based, TCP/UDP support
- <strong>Use Case:</strong> Real-time applications (e.g., gaming, chat), low-latency requirements
- <strong>Features:</strong>
  - Extreme performance (millions of requests/sec)
  - Preserves client IP address
  - TLS offloading support
  - Zonal failover and static IPs

🎯 <strong>Example:</strong> A multiplayer game backend needs sub-millisecond latency and sticky sessions; NLB is ideal here.

---

## 3. Classic Load Balancer (ELB)

- <strong>Layer:</strong> L4/L7 (Legacy support)
- <strong>Routing:</strong> Simple round robin or least connections
- <strong>Use Case:</strong> Legacy applications still using EC2-Classic or simple HTTP/TCP apps
- <strong>Features:</strong>
  - Basic HTTP and TCP support
  - No content-based routing
  - Deprecated for new use—use ALB/NLB instead

🎯 <strong>Example:</strong> Route /login requests to an Auth microservice and /checkout to Payments service based on URL path.
