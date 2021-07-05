require('dotenv').config();

module.exports = {
    username: process.env.DB_USERNAME || "root",
    password: process.env.DB_PASSWORD || "TROLL_face2",
    database: process.env.DB_DATABASE || "plataforma_ipn",
    host: process.env.DB_HOST || "localhost",
    dialect: process.env.DB_DIALECT || "mysql",
    define: {
        timestamp: false
    }
}