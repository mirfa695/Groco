var express=require('express')
const registerModel = require('../models/registerModel')
const loginRoute=express.Router()
var bcrypt=require('bcryptjs')
const { Query } = require('mongoose')
loginRoute.post('/login',async(req,res)=>{
try {
    const emailLogin=await registerModel.findOne({email:req.body.email})
    if(!emailLogin){
            return res.status(400).json({
                succces:false,
                error:false,
                message:'Account doesnt exist',
              })  
    }
    const comparePassword=await bcrypt.compare(req.body.password,emailLogin.password)
    if(comparePassword){
            return res.status(200).json({
                succces:true,
                error:false,
                message:'login successfull',
                role:emailLogin.role
              })  
    }else{
            return res.status(400).json({
                succces:false,
                error:true,
                message:'Incorrect password',
              })  
    }
} catch (error) {
        return res.status(400).json({
            succces:false,
            error:true,
            message:'Something went wrong',
            error:error
          })  
}
})
loginRoute.get('/viewUser/:id',async(req,res)=>{
try {
    const id=query.params.id
    const data=registerModel.findOne({_id:id})
    if(data){
        registerRoute.get('/viewUser/:id',async(req,res)=>{
            return res.status(400).json({
                succces:true,
                error:false,
                 data:data
              })  
})
    }
} catch (error) {
    return res.status(400).json({
        succces:false,
        error:true,
        message:'Something went wrong',
        error:error
      })  
}
})
module.exports=loginRoute