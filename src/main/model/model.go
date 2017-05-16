package model

import (
//    "fmt"
    "log"
//    "gopkg.in/mgo.v2"
    "gopkg.in/mgo.v2/bson"
)



type Model struct {
    Id          bson.ObjectId `bson:"_id,omitempty"`
    Name        string
    Description string
}

func Save(p Product) {
	log.Println("ID:19 :: Save()")
	log.Println("ID:20 :: p.Id = " + p.Id )
	log.Println("ID:21 :: p.Name = " + p.Name )
	log.Println("ID:22 :: p.Description = " + p.Description )
}



