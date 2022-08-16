resource "local_file" "demo" {
    content  = "hello students"
    filename = "file1.html"
}

resource "local_file" "file1" {
    filename = var.name1
    content="hello girl"
  }

resource "local_file" "file2" {
    filename = var.name2
    content="HELO"
  }

  resource "local_file" "file3" {
    filename = var.name3[1]
    content="HELOoo"
  }

  resource "local_file" "file4" {
    filename = var.name4["0"]
    content="HELOoo jjjj"
  }

  resource "local_file" "file5" {
    filename = var.name5.name
    content="HELOoo batch"
  }
  
  output "divya" {
    value=local_file.file2.filename
    
  }


