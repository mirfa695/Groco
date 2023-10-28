var mongoose=require('mongoose')
const schema=mongoose.Schema
const registerSchema=new schema({
    name:{type:String},
    email:{type:String},
    phno:{type:Number},
    password:{type:String},
    role:{type:String}
})
const registerModel=mongoose.model('userDetail',registerSchema)
module.exports=registerModel