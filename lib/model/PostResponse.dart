class PostResponse {  
  List<PostBeautyAndSpa> beautyAndSpa = [];    
  String? result;    

  PostResponse.fromJSON(Map<String, dynamic> parsedJson) {    
   // this.beautyAndSpa = parsedJson['beautyAndSpa'];  

   if (parsedJson['beautyAndSpa'] != null) {
      parsedJson['beautyAndSpa'].forEach((v) {
        beautyAndSpa
            .add(new PostBeautyAndSpa.fromJSON(v));
      });} 
    this.result = parsedJson['result'];   
  }
}

class PostBeautyAndSpa {  
  String? id;    
  String? imageUrl;    
  String? serviceName;    

  PostBeautyAndSpa.fromJSON(Map<String, dynamic> parsedJson) {    
    this.id = parsedJson['id'];    
    this.imageUrl = parsedJson['imageUrl'];    
    this.serviceName = parsedJson['serviceName'];    
  }
}