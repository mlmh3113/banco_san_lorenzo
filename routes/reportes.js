const express = require("express");
const router = express.Router();
const mdlUser = require("../models/mdlUsers");

//GET//
router.get("/", async (req, res) => {

  res.render("reportes");

});


router.post("/", async (req, res) => {
  const codigoVendedor = req.body.codigo_vendedor;
  const data= await mdlUser.reportetarjetas(codigoVendedor)
  const dataPrestamo = await mdlUser.reportePrestamos(codigoVendedor)
  const dataSeguros = await mdlUser.reporteSeg(codigoVendedor)

  const message = "No existe cliente con ese DNI";


  if (data != undefined || dataPrestamo != undefined || dataSeguros != undefined) {
    
    res.render("reportes", {data,dataPrestamo,dataSeguros });

   

  } else res.render("main", { message });

});

//POST//



module.exports = router;
