Feature: json feature testing

  Scenario: json reader parser

    * def jsonObject =
    """
    [
    {
    "name" :  "Tom",
    "city" :  "Bangalore",
    "age" :  25
    },
    {
    "name" :  "Annaa",
    "city" :  "Tokyo",
    "age":  34
    }
    ]
    """


    * print jsonObject
    * print jsonObject[0].name
    * print jsonObject[0].name + " " + jsonObject[1].city+ " " + jsonObject[1].age



  Scenario: complex json object

    * def complexJsonObject =
    """
    {
    "menu": {
    "id": "file",
    "value": "File",
    "popup": {
      "menuitem": [
        {"value": "New", "onclick": "CreateNewDoc()"},
        {"value": "Open", "onclick": "OpenDoc()"},
        {"value": "Close", "onclick": "CloseDoc()"}
      ]
     }
    }
   }
   """

    * print complexJsonObject
    * print complexJsonObject
    * print complexJsonObject.menu
    * print complexJsonObject.menu.popup
    * print complexJsonObject.menu.popup.menuitem[0]
    * print complexJsonObject.menu.popup.menuitem[0].value
    * print complexJsonObject.menu.popup.menuitem[0].onclick