package controller

import (
	"encoding/json"
	"net/http"
	"strconv"

	"github.com/Amartya-Mahato/goServer/model"
	"github.com/Amartya-Mahato/goServer/reader"
	"github.com/gorilla/mux"
)

var collection *model.Product_Collection

func init() {
	collection = reader.Json_File_Read()
}

func GetAllProducts(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	w.Header().Set("Allow-Control-Allow-Methods", "GET")
	json.NewEncoder(w).Encode(collection)
}

func GetOneItem(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	w.Header().Set("Allow-Control-Allow-Methods", "GET")
	params := mux.Vars(r)
	for _, val := range collection.Product {
		content, _ := strconv.Atoi(params["id"])
		if val.Id == content {
			json.NewEncoder(w).Encode(val)
			return
		}
	}

	json.NewEncoder(w).Encode("Sorry Id is not available")
}

func DeleteOneItem(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	w.Header().Set("Allow-Control-Allow-Methods", "DELETE")
	params := mux.Vars(r)
	for ids, val := range collection.Product {
		content, _ := strconv.Atoi(params["id"])
		if val.Id == content {
			collection.Product = append(collection.Product[:ids], collection.Product[ids+1:]...)
			json.NewEncoder(w).Encode(collection)
			return
		}
	}

	json.NewEncoder(w).Encode("Sorry Id is not available")
}

func DeleteAllItem(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	w.Header().Set("Allow-Control-Allow-Methods", "DELETE")

	collection = &model.Product_Collection{}
	json.NewEncoder(w).Encode(collection)
}
