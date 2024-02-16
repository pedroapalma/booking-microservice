# Booking Microservice

## Spring Boot Configuration Properties

**Eureka (Discovery Server):**

- `application.name`: Service discovery registration name.
- `eureka.instance.instance-id`: Unique identifier for the application instance.
- `eureka.instance.hostname`: is used in a Spring project with Eureka to explicitly set the hostname or IP address that Eureka clients should use when registering with the Eureka server. This configuration is often necessary when the API Gateway is unable to find routes during HTTP calls.
- `server.port`: Dynamic port for automatic assignment at runtime.

**Database (Mysql):**

- `datasource.url`: Connection URL for the Mysql database.
- `datasource.username`: Specifies the username for authenticating with the MySql database.
- `datasource.password`: Specifies the password for authenticating with the MySql database.

**RabbitMQ:**

- `rabbitmq.host`: Hostname or IP address of the RabbitMQ server.
- `rabbitmq.port`: Port number used for RabbitMQ communication.
- `rabbitmq.username`: Username for authentication with RabbitMQ.
- `rabbitmq.password`: Password for authentication with RabbitMQ.

**Actuator:**

- `management.endpoints.web.exposure.include`: Expose all actuator endpoints for monitoring and management.

**Spring Cloud:**

- `cloud.application-name`: Name for registering with the Config Server.

**Config Server:**

- `cloud.config.uri`: URL of the Config Server to fetch configurations from.

**HashiCorp Vault:**

- `cloud.vault.application-name`: Name for accessing secrets in Vault.
- `cloud.vault.host`: Hostname or IP address of your Vault server.
- `cloud.vault.port`: Port number used for communication with Vault.
- `cloud.vault.scheme`: Communication protocol with Vault (http in this case).
- `cloud.vault.authentication`: Authentication method used with Vault (TOKEN here).
- `cloud.vault.token`: Placeholder for the actual token used for authentication with Vault (replace with your real token).


## Dependencies

This project leverages the following Spring Boot dependencies:

### Service Discovery (Eureka)

- `spring-cloud-starter-netflix-eureka-client`: Enables service discovery and registration with a Eureka server. ([https://cloud.spring.io/spring-cloud-netflix/multi/multi__service_discovery_eureka_clients.html](https://cloud.spring.io/spring-cloud-netflix/multi/multi__service_discovery_eureka_clients.html))

### Configuration Management

- `spring-cloud-config-client`: Dynamically retrieves configuration from a remote Spring Cloud Config Server. ([https://cloud.spring.io/spring-cloud-config/](https://cloud.spring.io/spring-cloud-config/))

### Database (MySQL)

- `mysql-connector-j (runtime scope)`: Runtime dependency for connecting to a MySQL database (if applicable). ([https://dev.mysql.com/downloads/connector/j/](https://dev.mysql.com/downloads/connector/j/))

### Bootstrap

- `spring-cloud-starter-bootstrap`: Provides early initialization capabilities for Spring Cloud applications. ([https://www.baeldung.com/spring-cloud-bootstrapping](https://www.baeldung.com/spring-cloud-bootstrapping))

### Monitoring and Management

- `spring-boot-starter-actuator`: Exposes endpoints for monitoring and managing your application's health and performance. ([https://docs.spring.io/spring-boot/docs/current/actuator-api/htmlsingle/](https://docs.spring.io/spring-boot/docs/current/actuator-api/htmlsingle/))

### Vault Integration

- `spring-cloud-starter-vault-config`: Retrieves configuration secrets from HashiCorp Vault for secure management. ([https://cloud.spring.io/spring-cloud-vault/](https://cloud.spring.io/spring-cloud-vault/))

### Messaging

- `spring-cloud-starter-bus-amqp`: Library is used to enable distributed messaging using the AMQP (Advanced Message Queuing Protocol) protocol in Spring Cloud applications. This library facilitates communication between microservices by allowing them to publish and subscribe to messages through RabbitMQ, an AMQP-based message broker. One of the key features provided by spring-cloud-starter-bus-amqp is the ability to dynamically refresh configuration properties across multiple instances of microservices without requiring a restart. This is achieved through the /actuator/busrefresh endpoint provided by Spring Boot Actuator. When a configuration change is made in the centralized configuration server and triggered using the /actuator/busrefresh endpoint, the configuration server sends a refresh event to all microservices subscribed to the Spring Cloud Bus via RabbitMQ. Each microservice instance then retrieves the updated configuration properties and applies them dynamically, without needing to be restarted. This approach enhances the flexibility and agility of microservices architectures, allowing configuration changes to be propagated efficiently across the distributed system. ([https://cloud.spring.io/spring-cloud-bus/](https://cloud.spring.io/spring-cloud-bus/))