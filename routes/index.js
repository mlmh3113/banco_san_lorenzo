const express= require('express');
const router = express.Router();
const { body, validationResult } = require('express-validator');
const mdlUser = require("../models/mdlUsers");

//GET//
router.get('/',(req,res)=>{
res.render('index');
})

router.get("/mdlModi",async(req,res)=>{
    const dni = req.session.cliente;
    const dataCliente = await mdlUser.getClient(dni);
    res.render('modificar',{dataCliente});
});

router.get('/logout',(req,res)=>{
    req.session.destroy();
    res.redirect('/login');
})

router.get("/cancelar",async(req,res)=>{
    const data=req.session.cliente;
    const user=req.session.user;
    const dataCliente= await mdlUser.getClient(data);
    res.render("main",{dataCliente,user});
    
})


//POST//



module.exports = router;