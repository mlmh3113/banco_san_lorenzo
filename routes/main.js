const express = require("express");
const router = express.Router();
const mdlUser = require("../models/mdlUsers");

//GET//
router.get("/", (req, res) => {
  res.render("main");
});

//POST//

router.post("/", async (req, res) => {
  const dni = req.body.busqDni;
  const dataCliente = await mdlUser.getClient(dni);
  const message = "No existe cliente con ese DNI";
  const data = await mdlUser.getPrestamo(dni)
  const dataLimites=await mdlUser.getLimites(dni)
  const dataSeguros = await mdlUser.getSeguros(dni)

  if (dataCliente != undefined) {
    
    res.render("main", { dataCliente, user: req.session.user,data,dataLimites,dataSeguros });
    req.session.cliente = dni;

  } else res.render("main", { message });
});

module.exports = router;
