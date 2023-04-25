const express = require("express");
const router = express.Router();
const mdlUser = require("../models/mdlUsers");

//GET//
router.get("/", async (req, res) => {
  res.render("ventaPrestamo");
});

//POST//

router.post('/' , async  (req,res)=>{
    const userId=req.session.userId;
    const cliente=req.session.cliente;
    const user=req.session.user;
    dataCliente=await mdlUser.getClient(cliente);
    const data = await mdlUser.getPrestamo(cliente)
    const dataLimites=await mdlUser.getLimites(cliente)
    const dataSeguros = await mdlUser.getSeguros(cliente)
    await mdlUser.ventaPrestamo(cliente,req.body.monto,req.body.sucursal,userId,req.body.fecha);
    const message_agregar="Se agrego un nuevo Prestamo"    
    
        res.render("main", { userId,dataCliente,data,dataLimites,dataSeguros,message_agregar,user })
    
    })


module.exports = router;
