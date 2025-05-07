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
