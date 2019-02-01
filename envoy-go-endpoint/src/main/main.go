// json.go
package main

import (
	"encoding/json"
	"fmt"
	"net/http"
)

type Info struct {
	Info string `json:"info"`
}

func main() {

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		i := Info{
			Info: "hello world",
		}
		fmt.Println(i.Info)
		json.NewEncoder(w).Encode(i)
	})
	fmt.Println("Server is running ...")
	http.ListenAndServe(":8080", nil)
}
