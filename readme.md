# Pagination Demo Project

Welcome to the **Pagination Demo Project**! This project serves as a ready-made template that demonstrates how to implement pagination using SQL Server, .NET 6, and Docker. It is perfect for experiments, proofs of concept (PoCs), or as a foundation for building your own pagination-based applications.

---

## 🚀 Purpose

The purpose of this demo project is to provide a **quick-start template** for experimenting.
Whether you're exploring new concepts or building a PoC, this project will give you an easy-to-use, fully functional base.

---

## 🛠 Tools Needed

To set up and run this project, you'll need the following tools installed on your system:

1. **[Visual Studio](https://visualstudio.microsoft.com/)**  
   - The recommended IDE for developing and running .NET applications.

2. **[.NET 6 SDK](https://dotnet.microsoft.com/download/dotnet/6.0)**  
   - The project is built on .NET 6, so you’ll need the SDK to build and run the solution.

3. **[SQL Server Management Studio (SSMS)](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms)**  
   - For interacting with the SQL Server instance, running queries, and managing databases.

4. **[Docker Desktop](https://www.docker.com/products/docker-desktop)**  
   - This demo leverages Docker to quickly spin up a SQL Server instance without the need for a local installation.

---

## 📋 Instructions

Follow the steps below to get your environment set up and the demo project running:

### 1. Install Docker Desktop

- Download and install Docker Desktop from [here](https://www.docker.com/products/docker-desktop).
- After installation, ensure that Docker is running by checking the Docker icon in the system tray.

### 2. Run SQL Server in Docker

To create and run a SQL Server instance in a Docker container, open a command prompt and execute the following command:

```bash
docker run -d -p 1433:1433 --name demo-sqlserver -e ACCEPT_EULA=Y -e SA_PASSWORD={replace_with_your_preferred_password} -e MSSQL_PID=Express mcr.microsoft.com/mssql/server:2017-latest
```
- Replace {replace_with_your_preferred_password} with your preferred strong password. This password will be used for the SQL Server sa account.
- This will run the SQL Server instance on port 1433 of your localhost.
### 3. Open SQL Server Management Studio (SSMS)
#### 1. Launch SQL Server Management Studio (SSMS).
#### 2. Connect to your local Docker SQL Server using the following connection details:
- Server Name: localhost
- Authentication: SQL Server Authentication
- Login: sa
- Password: The password you set in the previous step.
#### 3. After successfully connecting, you can manage your databases, run queries, and more.
### 4. Execute the SQL Script
#### 1. Locate the Demo_Products.sql file inside the PaginationDemo.Products project folder.
#### 2. Open this SQL file in SSMS.
#### 3. Execute the script to create the Demo database and populate the Products table with sample data.
### 5. Open the Project Solution
#### 1. Open Visual Studio and load the PaginationDemo solution.
#### 2. Navigate to the appsettings.json file in the solution.
#### 3. Replace the connection string's password field with the password you created for the SQL Server instance in Docker.

```json
"ConnectionStrings": {
	"DefaultConnection": "Server=localhost, 1433;Database=Demo;User Id=sa;Password={replace_with_your_password};"
}
```
#### 4. Save the changes.

---

🚀 You're Ready!
You’ve now successfully set up the Pagination Demo Project! You can start the project, test the API and experiment with different configurations.
Enjoy! 🎉