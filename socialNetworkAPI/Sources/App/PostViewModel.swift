
import Foundation
import Combine

class PostsViewModel: ObservableObject {
    @Published var postStore: [Post] = [
        
        Post(description: "questo è il post numero 1", imageName: "prova_1",code: "static var blabla",collections: ["Animations","Buttons"]),
        Post(description: "questo è il post numero 2", imageName: "prova_1",code: "static var blabla",collections: ["Animations"]),
        Post(description: "questo è il post numero 3", imageName: "prova_1",code: "static var blabla",collections: ["Components"]),
        Post(description: "questo è il post numero 4", imageName: "prova_1",code: "static var blabla",collections: ["Animations","Buttons"]),
        Post(description: "questo è il post numero ", imageName: "prova_1",code: "static var blabla",collections: ["Animations","Buttons"]),
        Post(description: "questo è il post numero 6", imageName: "prova_1",code: "static var blabla",collections: ["Animations","Buttons"]),
        Post(description: "questo è il post numero 7", imageName: "prova_1",code: "static var blabla",collections: ["Animations","Buttons"]),
        Post(description: "questo è il post numero 8", imageName: "prova_1",code: "static var blabla",collections: ["Animations","Buttons"]),
        Post(description: "questo è il post numero 9", imageName: "prova_1",code: "static var blabla",collections: ["Animations","Buttons"]),
        Post(description: "questo è il post numero 10", imageName: "prova_1",code: "static var blabla",collections: ["Animations","Buttons"]),
        Post(description: "questo è il post numero 11", imageName: "prova_1",code: "static var blabla",collections: ["Animations","Buttons"]),
        Post(description: "questo è il post numero 12", imageName: "prova_1",code: "static var blabla",collections: ["Animations","Buttons"])
        
    ]
    
   
}
