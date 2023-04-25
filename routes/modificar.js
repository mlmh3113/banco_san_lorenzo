const express= require('express');
const router = express.Router();
const mdlUser = require("../models/mdlUsers");

//GET//
router.get('/',(req,res)=>{
    res.render('modificar');
    
    });





//POST//

router.post('/' , async  (req,res)=>{
    await mdlUser.modClient(
        req.body.dni,req.body.name,req.body.lastname,
        req.body.domicilio,req.body.telefono,
        req.body.usuario,req.body.email);
        dataCliente= await mdlUser.getClient(req.body.dni);
        const user=req.session.user;
        res.render("main",{dataCliente,user})
       
    })


module.exports = router;