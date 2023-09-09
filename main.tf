resource "local_file" "batch4file" {
	filename = "/home/ubuntu/terraform-learn/demo.txt"
	content =  "This is a file created with TeeraForm"
}
