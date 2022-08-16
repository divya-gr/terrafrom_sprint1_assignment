resource "local_file" "demo1" {
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
resource "random_id" "filena" {
  byte_length = 8
}

resource "local_file" "nam" {
   content="this is content name"
   filename = "${random_id.filena.dec}"
  
}
