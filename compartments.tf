resource "oci_identity_compartment" "prod" {
compartment_id = var.tenancy_ocid
description = "prod"
name = "prod"
enable_delete  = true
}
   resource "oci_identity_compartment" "prod_security" {
   compartment_id = oci_identity_compartment.prod.id
   description = "prod_security"
   name = "prod_security"
   enable_delete  = true
   }
   resource "oci_identity_compartment" "prod_network" {
   compartment_id = oci_identity_compartment.prod.id
   description = "prod_network"
   name = "prod_network"
   enable_delete  = true
   }
   resource "oci_identity_compartment" "prod_shared" {
   compartment_id = oci_identity_compartment.prod.id
   description = "prod_shared"
   name = "prod_shared"
   enable_delete  = true
   }
   resource "oci_identity_compartment" "prod_proy" {
   count = length( local.lista_proyectos )
   compartment_id = oci_identity_compartment.prod.id
   description = "prod_${local.lista_proyectos[count.index]}"
   name = "prod_${local.lista_proyectos[count.index]}"
   enable_delete  = true
   }
resource "oci_identity_compartment" "noprod" {
compartment_id = var.tenancy_ocid
description = "noprod"
name = "noprod"
enable_delete  = true
}
   resource "oci_identity_compartment" "noprod_security" {
   compartment_id = oci_identity_compartment.noprod.id
   description = "noprod_security"
   name = "noprod_security"
   enable_delete  = true
   }
   resource "oci_identity_compartment" "noprod_network" {
   compartment_id = oci_identity_compartment.noprod.id
   description = "noprod_network"
   name = "noprod_network"
   enable_delete  = true
   }
   resource "oci_identity_compartment" "noprod_shared" {
   compartment_id = oci_identity_compartment.noprod.id
   description = "noprod_shared"
   name = "noprod_shared"
   enable_delete  = true
   }
   resource "oci_identity_compartment" "noprod_sandbox" {
   compartment_id = oci_identity_compartment.noprod.id
   description = "noprod_sandbox"
   name = "noprod_sandbox"
   enable_delete  = true
   }
   resource "oci_identity_compartment" "noprod_amb" {
   count = length( local.lista_ambientes )
   compartment_id = oci_identity_compartment.noprod.id
   description = "noprod_${local.lista_ambientes[count.index]}"
   name = "noprod_${local.lista_ambientes[count.index]}"
   enable_delete  = true
   }
   resource "oci_identity_compartment" "noprod_s" {
   count = length( local.lista_b )
   compartment_id = oci_identity_compartment.noprod_amb[local.lista_c[count.index]].id
   name = "noprod_${local.lista_b[count.index]}"
   description = "noprod_${local.lista_b[count.index]}"
   enable_delete  = true
   }
resource "oci_identity_compartment" "shared" {
compartment_id = var.tenancy_ocid
description = "shared"
name = "shared"
enable_delete  = true
}
   resource "oci_identity_compartment" "shared_network" {
   compartment_id = oci_identity_compartment.shared.id
   description = "shared_network"
   name = "shared_network"
   enable_delete  = true
   }

