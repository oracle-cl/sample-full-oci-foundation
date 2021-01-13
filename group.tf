resource "oci_identity_group" "admin_prod" {
compartment_id = var.tenancy_ocid
description = "admin_prod"
name = "admin_prod"
}
   resource "oci_identity_group" "admin_prod_security" {
   compartment_id = var.tenancy_ocid
   description = "admin_prod_security"
   name = "admin_prod_security"
   }
   resource "oci_identity_group" "admin_prod_network" {
   compartment_id = var.tenancy_ocid
   description = "admin_prod_network"
   name = "admin_prod_network"
   }
   resource "oci_identity_group" "admin_prod_shared" {
   compartment_id = var.tenancy_ocid
   description = "admin_prod_shared"
   name = "admin_prod_shared"
   }
   resource "oci_identity_group" "admin_prod_proy" {
   count = length( local.lista_proyectos )
   compartment_id = var.tenancy_ocid
   description = "admin_prod_${local.lista_proyectos[count.index]}"
   name = "admin_prod_${local.lista_proyectos[count.index]}"
   }
resource "oci_identity_group" "admin_noprod" {
compartment_id = var.tenancy_ocid
description = "admin_noprod"
name = "admin_noprod"
}
   resource "oci_identity_group" "admin_noprod_security" {
   compartment_id = var.tenancy_ocid
   description = "admin_noprod_security"
   name = "admin_noprod_security"
   }
   resource "oci_identity_group" "admin_noprod_network" {
   compartment_id = var.tenancy_ocid
   description = "admin_noprod_network"
   name = "admin_noprod_network"
   }
   resource "oci_identity_group" "admin_noprod_shared" {
   compartment_id = var.tenancy_ocid
   description = "admin_noprod_shared"
   name = "admin_noprod_shared"
   }
   resource "oci_identity_group" "admin_noprod_sandbox" {
   compartment_id = var.tenancy_ocid
   description = "admin_noprod_sandbox"
   name = "admin_noprod_sandbox"
   }
   resource "oci_identity_group" "admin_noprod_amb" {
   count = length( local.lista_ambientes )
   compartment_id = var.tenancy_ocid
   description = "admin_noprod_${local.lista_ambientes[count.index]}"
   name = "admin_noprod_${local.lista_ambientes[count.index]}"
   }
   resource "oci_identity_group" "admin_noprod_s" {
   count = length( local.lista_b )
   compartment_id = var.tenancy_ocid
   name = "admin_noprod_${local.lista_b[count.index]}"
   description = "admin_noprod_${local.lista_b[count.index]}"
   }
resource "oci_identity_group" "admin_shared" {
compartment_id = var.tenancy_ocid
description = "admin_shared"
name = "admin_shared"
}
   resource "oci_identity_group" "admin_shared_network" {
   compartment_id = var.tenancy_ocid
   description = "admin_shared_network"
   name = "admin_shared_network"
   }

