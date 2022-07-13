variable "job_name" {
  description = "The name to use as the job name which overrides using the pack name"
  type        = string
  // If "", the pack name will be used
  default = "TESTING"
}

variable "region" {
  description = "The region where jobs will be deployed"
  type        = string
  default     = ""
}

variable "datacenters" {
  description = "A list of datacenters in the region which are eligible for task placement"
  type        = list(string)
  default     = ["dc1"]
}

variable "count" {
  description = "The number of app instances to deploy"
  type        = number
  default     = 2
}

variable "job_name" {
  description = "The message your application will render"
  type        = string
  default     = "postgresql"
}

variable "datacenters" {
  description = ""
  type        = list(string)
  default     = ["dc1"]
}

variable "type" {
  description = ""
  type        = string
  default     = "service"
}

variable "driver" {
  description = ""
  type        = string
  default     = "docker"
}

variable "config_image" {
  description = ""
  type        = string
  default     = "postgres"
}

variable "config_network_mode" {
  description = ""
  type        = string
  default     = "host"
}

variable "config_port_map" {
  description = ""
  type        = number
  default     = "5432"
}

variable "env_POSTGRES_USER" {
  description = ""
  type        = string
  default     = "root"
}

variable "env_POSTGRES_PASSWORD" {
  description = ""
  type        = string
  default     = "rootpassword"
}

variable "env_POSTGRES_PASSWORD" {
  description = ""
  type        = string
  default     = "rootpassword"
}

variable "logs_max_files" {
  description = ""
  type        = number
  default     = 5
}

variable "logs_max_file_size" {
  description = ""
  type        = number
  default     = 15
}

variable "resouce_cpu" {
  description = ""
  type        = number
  default     = 1000
}

variable "resouce_memory" {
  description = ""
  type        = number
  default     = 1024
}

variable "resouce_network_mbits" {
  description = ""
  type        = number
  default     = 10
}

variable "resouce_network_port_db" {
  description = ""
  type        = number
  default     = 5432
}

variable "service_name" {
  description = ""
  type        = string
  default     = "postgresql"
}

variable "service_tags" {
  description = ""
  type        = list(string)
  default     = ["postgres for vault"]
}

variable "service_port" {
  description = ""
  type        = string
  default     = "db"
}

variable "service_check_name" {
  description = ""
  type        = string
  default     = "alive"
}

variable "service_check_type" {
  description = ""
  type        = string
  default     = "tcp"
}

variable "service_check_interval" {
  description = ""
  type        = string
  default     = "10s"
}

variable "service_check_timeout" {
  description = ""
  type        = string
  default     = "2s"
}

variable "restart_attempts" {
  description = ""
  type        = number
  default     = 10
}

variable "restart_interval" {
  description = ""
  type        = string
  default     = "10s"
}

variable "restart_delay" {
  description = ""
  type        = string
  default     = "25s"
}

variable "restart_mode" {
  description = ""
  type        = string
  default     = "delay"
}

variable "update_max_parallel" {
  description = ""
  type        = number
  default     = 1
}

variable "update_min_healthy_time" {
  description = ""
  type        = string
  default     = "5s"
}

variable "update_healthy_deadline" {
  description = ""
  type        = string
  default     = "3m"
}

variable "update_auto_revert" {
  description = ""
  type        = bool
  default     = false
}

variable "update_canary" {
  description = ""
  type        = number
  default     = 1
}


