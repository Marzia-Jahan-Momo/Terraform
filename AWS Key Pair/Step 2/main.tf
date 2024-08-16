resource "aws_instance" "my_web" {
    ami = var.ami_id
    instance_type = var.instance_type

    tags = {
        Name = var.instance_name
    } 
  
}

resource "tls_private_key" "key_tf" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "my_tf_key" {
  key_name   = "Deployer key"
  public_key = tls_private_key.key_tf.public_key_openssh
}

resource "local_file" "my_tf_key_pair" {
  content  = tls_private_key.key_tf.private_key_pem
  filename = "my_tf_key_pair.pem"
}

output "public_key_content" {
  value     = tls_private_key.key_tf.public_key_openssh
  sensitive = true
}
