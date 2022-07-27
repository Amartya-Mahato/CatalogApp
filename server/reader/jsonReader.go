package reader

import (
	"encoding/json"
	"io/ioutil"
	"log"

	"github.com/Amartya-Mahato/goServer/model"
)

func Json_File_Read() *model.Product_Collection {

	jsonData, err := ioutil.ReadFile("D:/Flutter_Training/flutter_application_1/lib/module/Items.json")

	if err != nil {
		log.Fatal(err)
	}

	var collect model.Product_Collection
	_ = json.Unmarshal(jsonData, &collect)
	return &collect
}
