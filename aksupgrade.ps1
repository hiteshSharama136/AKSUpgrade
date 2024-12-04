Architecture Documentation
The provided diagram illustrates a cloud-based system architecture deployed on Microsoft Azure. Below is the detailed documentation for each component and its role in the system:

1. Components Overview
RQNS System
Description: An external system integrated into the architecture. It sends or receives data via the primary subscription.
Role: Acts as a source or target system for the application's data.
2. Primary Subscription
Description: The central subscription on Azure where the application resources are provisioned.
Key Component:
Load Balancer
Distributes incoming requests evenly across services hosted in the AKS cluster.
3. AKS Cluster
The core of the architecture is an Azure Kubernetes Service (AKS) cluster that hosts containerized services. Key components within the AKS cluster include:

a. Istio Service Mesh
Description: Provides advanced traffic management, observability, and secure communication between microservices.
Role: Manages communication between the CRD Service and the Orchestrator Service.
b. CRD Service
Description: A microservice deployed in the AKS cluster.
Role: Handles specific application logic or processes related to the application's data.
c. Orchestrator Service
Description: A microservice responsible for coordinating workflows or managing complex tasks.
Role: Acts as the central control point, interacting with other components like Function App and external services.
4. Azure Services
The architecture leverages several Azure services for enhanced functionality and security:

a. Service Bus
Description: A messaging service for reliable communication between components.
Role: Ensures decoupling and asynchronous message handling.
b. Storage Account
Description: Provides scalable cloud storage for data.
Role: Stores persistent data such as logs, files, or other assets required by the application.
c. Redis Cache
Description: A distributed, in-memory data store for caching.
Role: Improves application performance by reducing latency for frequently accessed data.
d. Function App
Description: A serverless compute service.
Role: Executes lightweight, event-driven tasks triggered by other services or events.
e. Azure Key Vault
Description: A cloud service for secure storage of secrets, certificates, and keys.
Role: Stores sensitive information like API keys, connection strings, and encryption keys.
5. Security Layer
a. Azure Application Insights
Description: A monitoring tool for performance management and diagnostics.
Role: Tracks application performance, logs, and telemetry data.
b. Network Security Groups (NSGs)
Description: Provides security at the network level by controlling inbound and outbound traffic.
Role: Restricts unauthorized access to resources within the subscription.
6. Data Flow
External Communication: The RQNS system interacts with the primary subscription through the load balancer.
Load Balancing: Incoming requests are distributed to microservices in the AKS cluster.
Service Communication: The Istio Service Mesh manages the communication between the CRD Service and the Orchestrator Service.
Integration with Azure Services:
Messages are exchanged via the Service Bus.
Data is cached in Redis and persisted in the Storage Account.
Function App processes events and interacts with Azure Key Vault for secure configurations.
Monitoring and Security: Application Insights and NSGs ensure the system is secure and performant.
