# Inventory Management System (IMS) - Backend

This is a complete backend project for managing an inventory system. It includes secure user authentication, robust product handling (add, update, list), and full documentation using Swagger and Postman. It is built using modern web technologies and is structured for scalability and clarity.

---

## ✅ Features

* Secure user registration and login with JWT
* Add new products with full metadata (name, SKU, type, etc.)
* Update product quantities with proper ID referencing
* Paginated product retrieval for efficient listing
* Authentication middleware for protected routes
* Swagger UI for built-in API documentation
* Postman collection for easy API testing
* Clean, modular folder structure following MVC pattern

---

## 🧠 Where AI Helped in Project Creation

While this backend project does not include AI/ML models, **AI tools (ChatGPT)** were used to:

* Design and write `README.md` and explanation documents
* Auto-generate Postman collections and Swagger configuration
* Assist in writing boilerplate for routes, models, and middleware
* Improve code readability and documentation
* Prepare professional interview-ready summaries and responses

---

## 🛠 Tech Stack

| Technology | Purpose                              |
| ---------- | ------------------------------------ |
| Node.js    | JavaScript runtime for backend logic |
| Express.js | Web server and routing framework     |
| MongoDB    | NoSQL database for inventory data    |
| Mongoose   | ODM for MongoDB schema management    |
| JWT        | Authentication and session handling  |
| dotenv     | Environment configuration            |
| Swagger    | API documentation                    |
| Postman    | Manual API testing                   |

---

## 📁 Project Structure

```
ims-backend/
├── app.js                    # Main server file
├── .env                     # Local environment variables
├── config/
│   └── db.js                # MongoDB connection logic
├── controllers/
│   ├── authController.js    # Register/Login logic
│   └── productController.js # Product business logic
├── models/
│   ├── User.js              # User schema
│   └── Product.js           # Product schema
├── routes/
│   ├── authRoutes.js        # /register, /login routes
│   └── productRoutes.js     # /products routes
├── middlewares/
│   └── authMiddleware.js    # JWT verification
├── swagger.js               # Swagger UI setup
├── postman_collection.json  # Collection for testing APIs
└── README.md                # Project documentation
```

---

## 📦 Environment Variables

Create a `.env` file in the root directory:

```env
PORT=8080
MONGO_URI=mongodb+srv://<username>:<password>@cluster0.mongodb.net/ims_db?retryWrites=true&w=majority
JWT_SECRET=your_jwt_secret
```

Ensure that `.env` is listed in `.gitignore` to prevent leaking credentials.

---

## 🚀 Getting Started

1. Clone the repo:

```bash
git clone https://github.com/<your-username>/ims-backend.git
cd ims-backend
```

2. Install dependencies:

```bash
npm install
```

3. Start the development server:

```bash
npm run dev
```

Or for production:

```bash
npm start
```

4. Test Swagger documentation:

```
http://localhost:8080/api-docs
```

---

## 📬 API Endpoints

### 🔐 Auth Routes

| Method | Endpoint    | Description              |
| ------ | ----------- | ------------------------ |
| POST   | `/register` | Register a new user      |
| POST   | `/login`    | Log in and get JWT token |

### 📦 Product Routes (Protected)

| Method | Endpoint                    | Description                |
| ------ | --------------------------- | -------------------------- |
| POST   | `/products`                 | Add a new product          |
| PUT    | `/products/:id/quantity`    | Update product quantity    |
| GET    | `/products?page=1&limit=10` | Get paginated product list |

---

## 🧪 Testing with Postman

Use the included Postman collection:
📁 `IMS_Postman_Collection.json`

### Steps:

1. Import the collection into Postman
2. Register and login to get your JWT token
3. Use the token in the **Authorization header**:

```
Authorization: Bearer <your_token>
```

4. Test product APIs

---

## 📄 API Docs with Swagger

Interactive API docs are available at:

```
http://localhost:8080/api-docs
```

This allows live testing of every route and visual inspection of schema.

---

## 🧠 Improvements if Given More Time

* Role-based access control (admin vs. staff)
* Frontend UI using React
* Docker containerization
* Better error handling with express-validator
* AI-driven analytics for product trends

---


