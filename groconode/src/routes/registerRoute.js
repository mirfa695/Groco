var express=require('express')
const registerModel = require('../models/registerModel')
const registerRoute=express.Router()
var bcrypt = require('bcryptjs');


registerRoute.post('/register',async(req,res)=>{
    console.log("hi");
    try {
        const hashedPassword=await bcrypt.hash(req.body.password,8)
        const users={
            name:req.body.name,
            email:req.body.email,
            phno:req.body.phno,
            password:hashedPassword,
            role:'user'
        }
        const oldEmail=await registerModel.findOne({email:req.body.email})
        if(oldEmail){
            return res.status(400).json({
                succces:false,
                error:false,
                message:'Email already exists',
              })  
        }
        const oldPhno=await registerModel.findOne({phno:req.body.phno})
        if(oldPhno){
            return res.status(400).json({
                succces:false,
                error:false,
                message:'Phone no already exists',
              })  
        }
        const data=await registerModel(users).save()
        if (data) {
          return res.status(200).json({
            success:true,
            error:false,
            message:'Registration completed',
            data:data
           }) 
        } else {
           return res.status(400).json({
                success:false,
                error:true,
                message:'Registration Failed',
               })  
        }
    } catch (error) {
        res.status(400).json({
            success:false,
            error:true,
            message:'something went wrong',
            error:error
           }) 
    }
})

module.exports=registerRoute