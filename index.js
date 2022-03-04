const express = require('express')
const os = require('os')

const app = express()
app.get('/', (req, res) => {
  res.send(`Hi from ${os.hostname()}!`)
})

app.get('/test', (req, res) => {
  res.send(`This from test ${os.hostname()}`)
})

const port = 3000
app.listen(port, () => console.log(`listening on port ${port}`))