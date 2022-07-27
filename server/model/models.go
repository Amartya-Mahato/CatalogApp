package model

type Product_Collection struct {
	Product []Item `json:"products"`
}
type Item struct {
	Id    int    `json:"id"`
	Name  string `json:"name"`
	Desc  string `json:"desc"`
	Price int    `json:"price"`
	Color string `json:"color"`
	Image string `json:"image"`
}
