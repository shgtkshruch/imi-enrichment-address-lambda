const convert = require('imi-enrichment-address')

exports.handler = async (event, context) => {
  console.log('event', event)
  console.log('context', context)

  let address, response

  if (event.body) {
    console.log('parse body', event.body)
    const body = JSON.parse(event.body)
    address = body.address
  } else {
    address = event.address
  }

  try {
    const json = await convert(address)
    response = {
      statusCode: 200,
      body: JSON.stringify(json)
    }
    console.log("response: ", response)
  } catch (error) {
    response = {
      statusCode: 500,
      body: error
    }
    console.log('convert error: ', response)
  }

  return response
}
