package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/Amartya-Mahato/goServer/routes"
)

func main() {
	fmt.Println("Go Server")
	router := routes.Routes()
	fmt.Println("Server is starting....")
	err := http.ListenAndServe("localhost:4000", router)

	if err != nil {
		log.Fatal(err)
	}

}
