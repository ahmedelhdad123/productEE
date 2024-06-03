<details>
<summary><b>Components</b></summary>

- **ProductServlet:** Acts as the front controller for managing product operations.
- **ProductService:** Implements business logic for product management.
- **JSP Pages for UI:**
  - **listProducts.jsp:** Displays the list of products with delete buttons.
  - **addProduct.jsp:** Form for adding a new product.

</details>

<details>
<summary><b>Functionality</b></summary>

<details>
<summary><i>Product Model</i></summary>

The `Product` class defines the structure of a product, including attributes like id, name, and price.
</details>

<details>
<summary><i>Product Service</i></summary>

The `ProductService` class provides methods to manage products:
- `addProduct(Product product)`: Adds a new product.
- `listProducts()`: Retrieves the list of products.
- `removeProduct(int productId)`: Removes a product by ID.
</details>

<details>
<summary><i>Product Servlet (Front Controller)</i></summary>

The `ProductServlet` class acts as the entry point for handling requests related to products. It handles requests for listing, adding, and removing products.
</details>

<details>
<summary><i>JSP Pages</i></summary>

- **listProducts.jsp:** Displays products with delete buttons. Clicking on the delete button sends a request to remove the respective product.
- **addProduct.jsp:** Contains a form for adding a new product. Submitting the form sends a request to add the product.
</details>

</details>

<details>
<summary><b>Control Flow</b></summary>

- Users interact with the UI by listing products or adding/removing products.
- Requests are sent to `ProductServlet`.
- `ProductServlet` delegates tasks to `ProductService` for business logic.
- `ProductService` interacts with the database or data storage.
- Responses are generated and sent back to the user via JSP pages.

</details>
