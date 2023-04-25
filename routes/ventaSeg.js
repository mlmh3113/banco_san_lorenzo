const express = require("express");
const router = express.Router();
const mdlUser = require("../models/mdlUsers");

//GET//
router.get("/", async (req, res) => {
  res.render("ventaSeg");
});

//POST//

router.post('/' , async  (req,res)=>{
    const userId=req.session.userId;
    const cliente=req.session.cliente;
    dataCliente=await mdlUser.getClient(cliente);
    const data = await mdlUser.getPrestamo(cliente)
    const dataLimites=await mdlUser.getLimites(cliente)
    const dataSeguros = await mdlUser.getSeguros(cliente)
    await mdlUser.ventaSeguro(req.body.tipoSeg,cliente,userId,req.body.sucursal,req.body.fecha);
    const message_agregar="Se agrego un nuevo Seguro"
        
        res.render("main", { userId,dataCliente,data,dataLimites,dataSeguros,message_agregar })
    
    })


module.exports = router;
