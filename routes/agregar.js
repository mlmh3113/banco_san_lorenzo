const express= require('express');
const router = express.Router();
const mdlUser = require("../models/mdlUsers");

//GET//
router.get('/',(req,res)=>{
    res.render('agregar');
    });



//POST//

router.post('/' , async  (req,res)=>{
await mdlUser.postAgregar(
    req.body.dni,req.body.name,req.body.lastname,
    req.body.domicilio,req.body.telefono,
    req.body.usuario,req.body.contrasenia,
    req.body.email,req.body.fNac);
    const message_agregar = "Se agrego un nuevo cliente";

    
    res.render("main", { message_agregar })

})

module.exports = router;