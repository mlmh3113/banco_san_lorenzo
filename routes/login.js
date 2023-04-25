const express = require("express");
const router = express.Router();
const mdlUser = require("../models/mdlUsers");

//GET//
router.get("/", (req, res) => {
  res.render("login");
});

//POST//

router.post("/", async (req, res) => {
  const user = req.body.user;
  const pass = req.body.pass;
  
  const data = await mdlUser.getUser(user, pass);
 
  const message = "usuario o password incorecto";


  if (data != undefined) {
    const userId = data.legajo;
    req.session.user = user;
    req.session.userId = userId;
    res.render("main",{data, user});
  
  } else res.render("login", { message, user, pass });
});

module.exports = router;
