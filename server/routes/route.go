package routes

import (
	"github.com/Amartya-Mahato/goServer/controller"
	"github.com/gorilla/mux"
)

func Routes() *mux.Router {
	newRoute := mux.NewRouter()
	newRoute.HandleFunc("/goServer/products", controller.GetAllProducts).Methods("GET")
	newRoute.HandleFunc("/goServer/products/{id}", controller.GetOneItem).Methods("GET")
	newRoute.HandleFunc("/goServer/products/{id}", controller.DeleteOneItem).Methods("DELETE")
	newRoute.HandleFunc("/goServer/products", controller.DeleteAllItem).Methods("DELETE")
	return newRoute
}
