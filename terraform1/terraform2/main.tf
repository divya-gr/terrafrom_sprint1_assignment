resource "local_file" "demo1" {
    filename = "file1.txt"
    content = "path "
  
}
resource "local_file" "name2" {
    filename =local.name
    content=local.con  
}
locals{
    name="file2.txt"
    con="this is the locals"
}
resource "random_id" "filen" {
  byte_length = 8
}

resource "local_file" "nam" {
   content="this is content name"
   filename = "${random_id.filen.dec}"
  
}

  