variable "valid_azs" {
  default = [
    { "az" : "us-east-1a", "ip" : "10.0.0.0/20" },
    { "az" : "us-east-1b", "ip" : "10.0.16.0/20" },
  { "az" : "us-east-1c", "ip" : "10.0.32.0/20" }]
}

variable "invalid_azs" {
  default = [
    { "az" : "us-east-1a", "ip" : "100.64.0.0/19" },
    { "az" : "us-east-1b", "ip" : "100.64.32.0/19" },
  { "az" : "us-east-1c", "ip" : "100.64.64.0/19" }]
}

