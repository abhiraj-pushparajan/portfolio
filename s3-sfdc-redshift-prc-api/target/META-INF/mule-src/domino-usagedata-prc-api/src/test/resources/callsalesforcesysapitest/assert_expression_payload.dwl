%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
    "0" : {
      "id": null,
      "items": [
        {
          "exception": null,
          "message": null,
          "payload": {
            "success": true,
            "id": "00P0R000005Sf4jUAC",
            "errors": []
          },
          "id": "00P0R000005Sf4jUAC",
          "statusCode": null,
          "successful": true
        }
      ],
      "successful": true
    },
    "1" : {
      id: null,
      items: [
        {
          exception: null,
          message: null,
          payload: {
            success: true,
            id: "00P0R000005Sf4oUAC",
            errors: []
          },
          id: "00P0R000005Sf4oUAC",
          statusCode: null,
          successful: true
        }
      ],
      successful: true
    }
})