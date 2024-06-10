# ProductEE

ProductEE is a simple Java EE web application that manages a list of products. It allows users to view, add, and delete products through a web interface. This application uses servlets to handle HTTP requests and JSP for rendering views.

## Project Structure

The project consists of the following main components:

1. **Servlet**: `ProductServlet` handles HTTP requests and routes them to the appropriate methods.
2. **Entities**: `Product` represents a product entity, and `ProductService` manages a list of products.
3. **JSP Pages**: Views for adding and listing products.

## Components

### 1. ProductServlet

The `ProductServlet` class handles the incoming HTTP requests and routes them to the appropriate handlers based on the request path. It supports both `GET` and `POST` methods.

- **doGet**: Handles the rendering of the product list and the product addition form.
  - `/add`: Forwards to the `AddProduct.jsp` page.
  - `/list` or `/`: Fetches the list of products from `ProductService` and forwards to the `Products.jsp` page.
- **doPost**: Handles the submission of forms for adding and deleting products.
  - `/add`: Adds a new product using the provided name and price, then redirects to the product list.
  - `/delete`: Deletes a product by ID and redirects to the product list.

### 2. Product Entity

The `Product` class represents a product with the following fields:
- `id`: Unique identifier for the product.
- `name`: Name of the product.
- `price`: Price of the product.

### 3. ProductService

The `ProductService` class manages a list of `Product` objects. It provides methods to:
- Retrieve the list of products.
- Add a new product.
- Remove a product by ID.

### 4. JSP Pages

- **AddProduct.jsp**: Form to add a new product.
- **Products.jsp**: Displays the list of products.
