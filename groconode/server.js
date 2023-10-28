var express=require('express')
var mongoose=require('mongoose')
const registerRoute = require('./src/routes/registerRoute')
const loginRoute = require('./src/routes/loginRoute')
const app=express()

app.get('/',(req,res)=>{
    res.send('Hello')
})
app.use(express.json())
app.use(express.urlencoded({extended:true}))
app.use('/signUp',registerRoute)
app.use('/signIn',loginRoute)
const url='mongodb+srv://bmirfa6:478436Mirfa@cluster0.6yozpcq.mongodb.net/grocoDB?retryWrites=true&w=majority'
mongoose.connect(url).then(()=>{
    app.listen(2000,()=>{
        console.log('server @ http://localhost:2000')
    })
}).catch((e)=>{
    console.log(e)
})
