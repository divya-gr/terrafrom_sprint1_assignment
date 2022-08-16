variable "name1"{
    type=string
    description = "hello students"
    default = "file1.txt"
}
variable "name2" {
    type=number
    description = "hello student"
    default = "100"
}
variable "name3" {
    type=list(any)
    description = "this is list"
    default = [1,3,"file4.txt","dg.txt"]
}
variable "name4" {
    type=map(any)
    description = "provide description"
    default = {
      "0" ="11"
      "1"="dr.txt" 
    }
}
variable "name5" {
  type = object({
    name    = string
    content = string
  })
  description="provide values for objectss"
  
  default = {
    content="values are here"
    name="file7.txt"
}
  }




  

