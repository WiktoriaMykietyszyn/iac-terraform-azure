variable "resource_group_name"{
	descryption = "resource name"
	type = string
	default = "exapmle_resorces"
	
}

variable "resource_group_location"{
	descryption = "Lokalization"
	type = string
	default = "West Europe"
	
}

variable "app_service_plan_name"{
	descryption = "resource name"
	type = string
	default = "exapmle_resorce"
	
}

variable "app_service_plan_Tier"{
	descryption = "Tier type"
	type = string
	default = "Standard"
	
}

variable "app_service_plan_Size"{
	descryption = "Size type"
	type = string
	default = "B1"	
}

variable "linux_web_app_name"{
	descryption = "resource name"
	type = string
	default = "exapmle_resorce"	
}
variable "python_version"{
	type = "string"
	defalut = "3.6"
	
}
variable "reomte_debuging_enabled"{
	type = "string"
	defalut = "3.6"
}
variable "http2_enabled"{
	type = bool
	defalut = false
}

}
variable "manual_integration"{
	type = bool
	defalut = false
} 
variable "rollback_integraton"{
	type = bool
	defalut = false
}
variable "use_mercurial"{
	type = bool
	defalut = true
} 
variable "branch"{
	type = "string"
	defalut = "https://github.com/kwasio93/iac-terraform-azure"
}
variable "repo_url"{
	type = "string"
	defalut = "master"
}




