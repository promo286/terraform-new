variable "vpn_ip" {
    default = "200.20.30.50/32"
    description = "This is a VPN Server Created in AWS"
}

variable "app_port" {
}

variable "ssh_port" {
    default = "22"
}

variable "ftp_port" {
    default = "21"
}

variable "Ip-allow" {
    default = "tcp"  
}


