package main

import (
	"html/template"
    "log"
    "net/http"
    "strconv"
    "time"
)

//View Model for edit
type EditNote struct {
	Note
	Id string 
}

type Note struct {
    Title       string
    Description string
    CreatedOn   time.Time
}

//Store for the Notes collection
var noteStore = make(map[string]Note)
//Variable to generate key for the collection
var id int = 0

var templates map[string]*template.Template

func main() {
	
	log.Println("ID:27")
	
	mux := http.NewServeMux()
	fs := http.FileServer(http.Dir(getRootPath() + config.Static))
	mux.Handle("/static/", http.StripPrefix("/static/", fs))
	mux.HandleFunc("/process", process)
    mux.HandleFunc("/", index)
    mux.HandleFunc("/admin-lte", getNotesAdminLte)
    mux.HandleFunc("/notes/add", addNote)
    mux.HandleFunc("/notes/save", saveNote)
	
    server := http.Server{
        Addr: "127.0.0.1:8080",
        Handler: mux,
    }
    server.ListenAndServe()
}

//Compile view templates
func init() {
    if templates == nil {
        templates = make(map[string]*template.Template)
    }
    templates["index"] = template.Must(template.ParseFiles(getRootPath() + "/src/main/staticweb/templates/index.html",
    		getRootPath() + "/src/main/staticweb/templates/admin-lte.html"))
    
    templates["admin-lte"] = template.Must(template.ParseFiles(getRootPath() + "/src/main/staticweb/templates/index.html",
    		getRootPath() + "/src/main/staticweb/templates/admin-lte.html"))
    
    templates["add"] = template.Must(template.ParseFiles(getRootPath() + "/src/main/staticweb/templates/add.html",
    		getRootPath() + "/src/main/staticweb/templates/base.html"))
    
    templates["edit"] = template.Must(template.ParseFiles(getRootPath() + "/src/main/staticweb/templates/edit.html",
    		getRootPath() + "/src/main/staticweb/templates/base.html"))
}

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

func getNotes(w http.ResponseWriter, r *http.Request) {
	log.Println("ID:92")
    renderTemplate(w, "index", "base", noteStore)
}

func getNotesAdminLte(w http.ResponseWriter, r *http.Request) {
	log.Println("ID:93")
    renderTemplate(w, "admin-lte", "admin-lte", noteStore)
}

func index(w http.ResponseWriter, r *http.Request) {
	log.Println("ID:98")
    renderTemplate(w, "index", "admin-lte", noteStore)
}

func addNote(w http.ResponseWriter, r *http.Request) {
    renderTemplate(w, "add", "base", nil)
}

//Handler for "/notes/save" for save a new item into the data store
func saveNote(w http.ResponseWriter, r *http.Request) {
    r.ParseForm()
    title := r.PostFormValue("title")
    desc := r.PostFormValue("description")
    note := Note{title, desc, time.Now()}
    //increment the value of id for generating key for the map
    id++
    //convert id value to string
    k := strconv.Itoa(id)
    noteStore[k] = note
    http.Redirect(w, r, "/", 302)
}

func process(w http.ResponseWriter, r *http.Request) {
    t, _ := template.ParseFiles(getRootPath() + "/src/main/staticweb/templates/tmpl.html")
    t.Execute(w, "Hello World!")
}
