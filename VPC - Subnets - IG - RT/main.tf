resource "aws_instance" "my_web" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name

    subnet_id = var.subnet_choice == "public1" ? aws_subnet.public1_subnet.id : aws_subnet.public2_subnet.id
    tags = {
        Name = var.instance_name
    }  
}






