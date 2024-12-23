# BestChoiceCars

**BestChoiceCars** is a **Spring Boot application** designed to help users select the best car based on price and brand. This application provides a simple and efficient way to filter and choose cars from a list of available options. The project is built using Spring Boot, JSP for the frontend, a default in-memory database, and the embedded Tomcat server for deployment.

---

## Features

- **Filter by Price**: Allows users to select the best car within a specified price range.
- **Filter by Brand**: Lets users browse and select cars based on their favorite brand.
- **Responsive Frontend**: Built with JSP to provide an interactive and user-friendly experience.
- **Integrated Backend**: Powered by Spring Boot, ensuring a robust and scalable application.
- **Embedded Server**: Uses the default embedded Tomcat server, simplifying deployment.

---

## Prerequisites

- **Java**: JDK 11 or higher.
- **Maven**: For dependency management and project building.
- **Spring Boot**: Pre-configured with default settings (no external setup required).
- **Database**: Default in-memory database (H2).

---

## Getting Started

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/ChethanKacham/BestChoiceCars.git
   
2. **Navigate to the project directory**:
   ```bash
   cd BestChoiceCars

3. **Build the project using Maven**:
   ```bash
   mvn clean install

4. **Run the application**:
   ```bash
   mvn spring-boot:run

---

## Application Workflow

1. Launch the application by navigating to http://localhost:8080 in your browser.

2. Use the menu to:
   - Select cars based on price.
   - Select cars based on brand.

3. View the filtered results on the JSP-based UI.

---

## 🛠️ Technologies Used

   - **Programming Language**: Java, Spring Boot(with Spring MVC and Spring Data JPA)
   - **Frontend**: JSP(Java server pages)
   - **Database**: H2(Default in-memory database)
   - **Server**: Embedded Tomcat server
   - **Build Tool**: Maven
