package server

import (
	"encoding/json"
	"fmt"
	"net/http"
)

//Data my data
type Data struct {
	Name   string
	Age    int
	School string
}

func helloHandler(w http.ResponseWriter, req *http.Request) {
	myData := Data{
		Name:   "Alex",
		Age:    21,
		School: "ncsu",
	}
	jsonBytes, _ := json.Marshal(myData)
	fmt.Fprintf(w, string(jsonBytes))
}

//StartServer starts the server
func StartServer() {
	fmt.Println("running from server.")
	http.HandleFunc("/hello", helloHandler)
	http.ListenAndServe(":8090", nil)
}
