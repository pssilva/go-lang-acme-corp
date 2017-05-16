package main

import (
//	"html/template"
	"log"
	"net/http"
//	"strconv"
//	"time"
//	"gopkg.in/mgo.v2"
//	"gopkg.in/mgo.v2/bson"
)



//Render templates for the given name, template definition and data object
func renderTemplate(w http.ResponseWriter, name string, template string, viewModel interface{}) {
    // Ensure the template exists in the map.
    tmpl, ok := templates[name]
    if !ok {
        http.Error(w, "The template does not exist.", http.StatusInternalServerError)
    }
    log.Println("ID:85 renderTemplate() :: template = " + template)
    log.Println("ID:86 renderTemplate() :: name = " + name)
    err := tmpl.ExecuteTemplate(w, template, viewModel)
    if err != nil {
        http.Error(w, err.Error(), http.StatusInternalServerError)
    }
}