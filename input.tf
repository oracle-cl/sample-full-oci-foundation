variable "region" {}
variable "tenancy_ocid" {}

#########################################
variable "ambientes" {}
variable "proyectos" {}
variable "tags" {}

#########################################
locals {
  lista_ambientes = [ for i in split(",", var.ambientes) : trimspace(i) ]
  lista_proyectos = [ for i in split(",", var.proyectos) : trimspace(i) ]
  lista_tags      = [ for i in split(",", var.tags) : trimspace(i) ]
  lista_aux1 = [ for i in local.lista_ambientes : [ for j in local.lista_proyectos : format("%s_%s",i,j) ] ]
  lista_aux2 = [ for i in local.lista_ambientes : [ for j in local.lista_proyectos : index( local.lista_ambientes, i) ] ]
  lista_aux3 = [ for i in local.lista_ambientes : [ for j in local.lista_proyectos : i ] ]
  lista_b         = flatten( local.lista_aux1 )
  lista_c         =  flatten( local.lista_aux2 )
  lista_d         =  flatten( local.lista_aux3 )
}
