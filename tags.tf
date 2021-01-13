resource "oci_identity_tag_namespace" "tns" {
  compartment_id = var.tenancy_ocid
  description    = "base"
  name           = "base"
  is_retired = false
}

resource "oci_identity_tag" "ambiente" {
  description      = "ambiente"
  name             = "ambiente"
  tag_namespace_id = oci_identity_tag_namespace.tns.id
  is_cost_tracking = true
  is_retired       = false
  validator {
    validator_type = "ENUM"
    values         = local.lista_ambientes
  }
}

resource "oci_identity_tag" "proyecto" {
  description      = "proyecto"
  name             = "proyecto"
  tag_namespace_id = oci_identity_tag_namespace.tns.id
  is_cost_tracking = true
  is_retired       = false
  validator {
    validator_type = "ENUM"
    values         = local.lista_proyectos
  }
}

resource "oci_identity_tag" "tt" {
  count            = length(local.lista_tags)
  description      = local.lista_tags[count.index]
  name             = local.lista_tags[count.index]
  tag_namespace_id = oci_identity_tag_namespace.tns.id
  is_cost_tracking = false
  is_retired       = false
}

