const express = require('express');
const User = require('../user/user');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const authRouter = express.Router();
//Sign-up
authRouter.post("/api/signup", async (req, res) => {
  try {
    const {name, email, password } = req.body;

    const existingUser = await User.findOne({ email });
    if (existingUser) {
      return res
        .status(400)
        .json({ msg: "Pogrešan e-mail ili password!" });
    }

  const hashedPassword = await bcrypt.hash(password, 8)
 let user = new User({

    email,
    password: hashedPassword,
    name


    })

    user = await user.save();
    res.json(user)
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});
// SIGN IN

authRouter.post("/api/signin", async (req, res) => {
    try {
      const { email, password } = req.body;
  
      const user = await User.findOne({ email });
      if (!user) {
        return res
          .status(400)
          .json({ msg: "Pogresan e-mail ili passowrd!" });
      }
      const isMatch= await bcrypt.compare(password, user.password);
      if(!isMatch){
        return res.status(400).json({msg: "Pogresan e-mail"})
      }
      const token = jwt.sign({ id: user._id }, "passwordKey");
      res.json({ token, ...user._doc });
    } catch (e) {
      res.status(500).json({ error: e.message });
    }
  });

module.exports = authRouter;