class Jobs{
  final String title;
  final String description;
  final String salary;
  final String image;
  final String company;

  Jobs(this.title,this.description,this.salary,this.image,this.company);

static List<Jobs> getJobs(){
    List<Jobs> items = <Jobs>[];
  
  String des= "electrical engineer graduate";
  
    items.add(Jobs("engineer",des,"100","images_21.jpeg","CompanyX"));  
    items.add(Jobs("technician","electrical technician passer.","100","images_24.jpeg","CompanyX"));
    items.add(Jobs("doctor","company physician","100","images_24.jpeg","CompanyX"));
    items.add(Jobs("manager","manager for a new team","100","images_21.jpeg","CompanyX"));
 
  return items;
  }

}