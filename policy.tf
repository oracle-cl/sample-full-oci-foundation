resource "oci_identity_policy" "admin_prod" {
compartment_id = var.tenancy_ocid
description = "admin_prod"
name = "admin_prod"
statements = [ "Allow group ${oci_identity_group.admin_prod.name} to manage all-resources in compartment ${oci_identity_compartment.prod.name}" ]
}
   resource "oci_identity_policy" "admin_prod_security" {
   compartment_id = var.tenancy_ocid
   description = "admin_prod_security"
   name = "admin_prod_security"
   statements = [ "Allow group ${oci_identity_group.admin_prod_security.name} to manage all-resources in compartment prod:${oci_identity_compartment.prod_security.name}" ]
   }
   resource "oci_identity_policy" "admin_prod_network" {
   compartment_id = var.tenancy_ocid
   description = "admin_prod_network"
   name = "admin_prod_network"
   statements = [ "Allow group ${oci_identity_group.admin_prod_network.name} to manage all-resources in compartment prod:${oci_identity_compartment.prod_network.name}" ]
   }
   resource "oci_identity_policy" "admin_prod_shared" {
   compartment_id = var.tenancy_ocid
   description = "admin_prod_shared"
   name = "admin_prod_shared"
   statements = [ "Allow group ${oci_identity_group.admin_prod_shared.name} to manage all-resources in compartment prod:${oci_identity_compartment.prod_shared.name}",
     "Allow group ${oci_identity_group.admin_prod_shared.name} to use virtual-network-family in compartment prod:${oci_identity_compartment.prod_network.name}" ]
   }
   resource "oci_identity_policy" "admin_prod_proy" {
   count = length( local.lista_proyectos )
   compartment_id = var.tenancy_ocid
   description = "admin_prod_${local.lista_proyectos[count.index]}"
   name = "admin_prod_${local.lista_proyectos[count.index]}"
   statements = [ "Allow group ${oci_identity_group.admin_prod_proy[count.index].name} to manage all-resources in compartment prod:${oci_identity_compartment.prod_proy[count.index].name}" ,
     "Allow group ${oci_identity_group.admin_prod_proy[count.index].name} to use virtual-network-family in compartment prod:${oci_identity_compartment.prod_network.name}", 
     "Allow group ${oci_identity_group.admin_prod_proy[count.index].name} to use secret-family in compartment prod:${oci_identity_compartment.prod_security.name}", ]
   }
resource "oci_identity_policy" "admin_noprod" {
compartment_id = var.tenancy_ocid
description = "admin_noprod"
name = "admin_noprod"
statements = [ "Allow group ${oci_identity_group.admin_noprod.name} to manage all-resources in compartment ${oci_identity_compartment.noprod.name}" ]
}
   resource "oci_identity_policy" "admin_noprod_security" {
   compartment_id = var.tenancy_ocid
   description = "admin_noprod_security"
   name = "admin_noprod_security"
   statements = [ "Allow group ${oci_identity_group.admin_noprod_security.name} to manage all-resources in compartment noprod:${oci_identity_compartment.noprod_security.name}" ]
   }
   resource "oci_identity_policy" "admin_noprod_network" {
   compartment_id = var.tenancy_ocid
   description = "admin_noprod_network"
   name = "admin_noprod_network"
   statements = [ "Allow group ${oci_identity_group.admin_noprod_network.name} to manage all-resources in compartment noprod:${oci_identity_compartment.noprod_network.name}" ]
   }
   resource "oci_identity_policy" "admin_noprod_shared" {
   compartment_id = var.tenancy_ocid
   description = "admin_noprod_shared"
   name = "admin_noprod_shared"
   statements = [ "Allow group ${oci_identity_group.admin_noprod_shared.name} to manage all-resources in compartment noprod:${oci_identity_compartment.noprod_shared.name}" ,
     "Allow group ${oci_identity_group.admin_noprod_shared.name} to use virtual-network-family in compartment noprod:${oci_identity_compartment.noprod_network.name}", 
     "Allow group ${oci_identity_group.admin_noprod_shared.name} to use secret-family in compartment noprod:${oci_identity_compartment.noprod_security.name}",]
   }
   resource "oci_identity_policy" "admin_noprod_sandbox" {
   compartment_id = var.tenancy_ocid
   description = "admin_noprod_sandbox"
   name = "admin_noprod_sandbox"
   statements = [ "Allow group ${oci_identity_group.admin_noprod_sandbox.name} to manage all-resources in compartment noprod:${oci_identity_compartment.noprod_sandbox.name}" ,
     "Allow group ${oci_identity_group.admin_noprod_sandbox.name} to use virtual-network-family in compartment noprod:${oci_identity_compartment.noprod_network.name}", 
     "Allow group ${oci_identity_group.admin_noprod_sandbox.name} to use secret-family in compartment noprod:${oci_identity_compartment.noprod_security.name}", ]
   }
   resource "oci_identity_policy" "admin_noprod_amb" {
   count = length( local.lista_ambientes )
   compartment_id = var.tenancy_ocid
   description = "admin_noprod_${local.lista_ambientes[count.index]}"
   name = "admin_noprod_${local.lista_ambientes[count.index]}"
   statements = [ "Allow group ${oci_identity_group.admin_noprod_amb[count.index].name} to manage all-resources in compartment noprod:${oci_identity_compartment.noprod_amb[count.index].name}" ,
     "Allow group ${oci_identity_group.admin_noprod_amb[count.index].name} to use virtual-network-family in compartment noprod:${oci_identity_compartment.noprod_network.name}", 
     "Allow group ${oci_identity_group.admin_noprod_amb[count.index].name} to use secret-family in compartment noprod:${oci_identity_compartment.noprod_security.name}", ]
   }
   resource "oci_identity_policy" "admin_noprod_s" {
   count = length( local.lista_b )
   compartment_id = var.tenancy_ocid
   name = "admin_noprod_${local.lista_b[count.index]}"
   description = "admin_noprod_${local.lista_b[count.index]}"
   statements = [ "Allow group ${oci_identity_group.admin_noprod_s[count.index].name} to manage all-resources in compartment noprod:noprod_${local.lista_d[count.index]}:noprod_${local.lista_b[count.index]}" ,
     "Allow group ${oci_identity_group.admin_noprod_s[count.index].name} to use virtual-network-family in compartment noprod:${oci_identity_compartment.noprod_network.name}", 
     "Allow group ${oci_identity_group.admin_noprod_s[count.index].name} to use secret-family in compartment noprod:${oci_identity_compartment.noprod_security.name}", ]
   depends_on = [ oci_identity_compartment.noprod_s ]
   }
resource "oci_identity_policy" "admin_shared" {
compartment_id = var.tenancy_ocid
description = "admin_shared"
name = "admin_shared"
statements = [ "Allow group ${oci_identity_group.admin_shared.name} to manage all-resources in compartment ${oci_identity_compartment.shared.name}" ]
}
   resource "oci_identity_policy" "admin_shared_network" {
   compartment_id = var.tenancy_ocid
   description = "admin_shared_network"
   name = "admin_shared_network"
   statements = [ "Allow group ${oci_identity_group.admin_shared_network.name} to manage all-resources in compartment shared:${oci_identity_compartment.shared_network.name}" ]
   }
