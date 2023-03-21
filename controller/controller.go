package controller

import (
	"html/template"
	"net/http"
)

var (
	homeController home
	shopController shop
)

func StartUp(templates map[string]*template.Template) {
	homeController.standLocatorTemplate = templates["stand_locator.html"]
	homeController.loginTemplate = templates["login.html"]
	homeController.homeTemplate = templates["home.html"]
	homeController.registerRoutes()
	shopController.categoryTemplate = templates["shop_details.html"]
	shopController.productTemplate = templates["shop_detail.html"]
	shopController.shopTemplate = templates["shop.html"]
	shopController.registerRoutes()
	http.Handle("/img/", http.FileServer(http.Dir("public")))
	http.Handle("/css/", http.FileServer(http.Dir("public")))
}
