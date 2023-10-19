const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql');

const app = express();
const port = 3000;

const connection = mysql.createConnection({
    host: 'localhost',  // Cambia esto por la dirección de tu servidor MySQL
    user: 'root', // Cambia esto por tu usuario de MySQL
    password: '', // Cambia esto por tu contraseña de MySQL
    database: 'id20807467_clientes' // Cambia esto por el nombre de tu base de datos
});

connection.connect((err) => {
    if (err) {
        console.error('Error al conectar a la base de datos:', err);
        return;
    }
    console.log('Conexión exitosa a la base de datos');
});


// Middleware para analizar los datos enviados por el formulario
app.use(bodyParser.urlencoded({ extended: true }));

console.log('Middleware para la ruta / activado');

// Ruta para manejar el envío del formulario
app.post('/', (req, res) => {
    console.log('Recibida solicitud POST');
    const { nif, nombre, direccion, email } = req.body;
    console.log('Datos del formulario:', req.body);

    // Verificar que todos los campos obligatorios estén presentes
    if (!nif || !nombre || !direccion || !email) {
        res.status(400).send('Todos los campos son obligatorios');
        return;
    }

      // Insertar los datos en la base de datos
    const query = `INSERT INTO clientes (nif, nombre, direccion, email) VALUES (?, ?, ?, ?)`;
    connection.query(query, [nif, nombre, direccion, email], (err, result) => {
        if (err) {
        console.error('Error al insertar en la base de datos:', err);
        res.status(500).send('Error al registrar el usuario');
        return;
        }
        res.status(200).send('Usuario registrado exitosamente');
    });
    });

// Iniciar el servidor
app.listen(port, () => {
    console.log(`Servidor escuchando en http://localhost:${port}`);
});


