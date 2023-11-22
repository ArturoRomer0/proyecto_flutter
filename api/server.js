// server.js
const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');

const cors = require('cors');
const app = express();
app.use(bodyParser.json());


// Usa CORS con opciones predeterminadas
// Esto permitirá solicitudes de cualquier origen
app.use(cors());

// ... el resto de tu código de servidor ...

// Configuración de la conexión a la base de datos
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'proyecto_flutter'
});

// Conectar a MySQL
db.connect(err => {
    if (err) throw err;
    console.log('Conectado a MySQL');
});

// Puerto del servidor
const PORT = 3000;

app.listen(PORT, () => {
    console.log(`Servidor corriendo en el puerto ${PORT}`);
});

// server.js (continuación)
app.get('/products', (req, res) => {
    let { page, limit, search } = req.query;

    page = page ? parseInt(page) : 0;
    limit = limit ? parseInt(limit) : 10;
    search = search ? search : '';

    const startIndex = page * limit;
    const endIndex = startIndex + limit;

    let sql = 'SELECT * FROM products WHERE name LIKE ? LIMIT ?,?';
    let values = [`%${search}%`, startIndex, endIndex];

    let products = [];
    db.query(sql, values, (err, results) => {
        if (err) throw err;
        results.forEach(element => {
            let sql2 = 'SELECT * FROM images WHERE id_producto = ?';
            let values2 = [element.id_product];
            let images = [];
            db.query(sql2, values2, (err, results2) => {
          

                if (err) throw err;
                results2.forEach(element2 => {
                    images.push(
                        element2.uri
                    );
                });
                products.push({
            
                    id_product: element.id_product,
                    name: element.name,
                    price: element.price,
                    images: images
                });
                res.json(products);
            });
            
            
        });
    });
});

