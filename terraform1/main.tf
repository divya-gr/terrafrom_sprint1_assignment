resource "local_file" "demo" {
    content  = "hello students"
    filename = "abc.html"
}
resource "local_file" "nam2" {
    filename =local.name
    content=local.con  
}
locals{
    name="file2.txt"
    con="this is the locals"
}


resource "random_id" "divya" {
    byte_length = 8
}

resource "local_file" "garg" {
#   content = "hello garg"
    filename = "${random_id.divya.hex}"
    content = "${random_id.divya.dec}"
  }

