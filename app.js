const express = require('express')
const app = express()
app.use(express.json())

const cors = require('cors');
app.use(cors())

// const userController = require("./controllers/userController")
// const servicesController = require("./controllers/servicesController")



// -------- project routes -------- 
// app.use('/users', userController)
// app.use('/services', servicesController)

// -------- Default or Home routes -------- 
app.get('/', (req, res) => {
  const msg = `
 did-you-know Backend!!
  `
  res.send(msg)
})

app.get('*', (req, res) => {
  res.send('The info you are looking for does not exist')
})

module.exports = app;