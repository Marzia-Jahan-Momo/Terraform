resource "aws_instance" "my_web" {
    ami = var.ami_id
    instance_type = var.instance_type

    tags = {
        Name = var.instance_name
    } 
  
}

resource "aws_key_pair" "my_tf_pair" {
  key_name   = "deployer-key"
  public_key = tls_private_key.rsa_tf.private_key_openssh

}

resource "tls_private_key" "rsa_tf" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "my_tf_key_pair" {
  content  = tls_private_key.rsa_tf.private_key_pem
  filename = "my_tf_key_pair"
}
