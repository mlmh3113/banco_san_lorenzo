const express = require('express');
const path = require('path');
require('dotenv').config();
const PORT = 3000;
const app = express();
const hbs= require('hbs');
const session= require('express-session');
app.use(session({
    secret:'keyboard cat',
    resave: false,
    saveUninitialized:true,

}));

const secured=async (req,res,next)=>{
    if(req.session.user){
        next()
    }
    else{res.render('login')}
}

const routeIndex = require("./routes/index");
const routeLogin = require("./routes/login");
const routeMain = require("./routes/main");
const routeModificar = require("./routes/modificar");
const routeAgregar = require("./routes/agregar");
const routeReportes = require("./routes/reportes");
const routeVentaSeg=require("./routes/ventaSeg");
const routeVentaPrestamo = require("./routes/ventaPrestamo")

hbs.registerPartials(path.join(__dirname, "./views/partials"));

app.use(express.static(path.join(__dirname, "./public")));

app.use(express.urlencoded({extended:false}));

app.set('view engine', 'hbs');


app.use("/", routeIndex);
app.use("/login", routeLogin);
app.use("/main",secured, routeMain);
app.use("/modificar", routeModificar);
app.use("/agregar", routeAgregar);
app.use("/reportes", routeReportes);
app.use("/ventaSeg", routeVentaSeg);
app.use("/ventaPrestamo", routeVentaPrestamo);

app.listen(PORT, () => {
    console.log(`nuestra app corre en el puerto http://localhost:${PORT}`);
})
