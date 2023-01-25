import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    app.get("posts") { req -> [Post] in
        return PostsViewModel().postStore
    }
    
    app.get("postsJson") { req -> EventLoopFuture<Response> in
        guard let file = Bundle.module.url(forResource: "posts", withExtension: "json")
        else {
            fatalError("Couldn't find the file")
        }
        let jsonData = try Data(contentsOf: file)
        let json = try JSONDecoder().decode([Post].self, from: jsonData)
        let jsonString = String(data: try JSONEncoder().encode(json), encoding: .utf8)
        var buffer = ByteBuffer.init()
        buffer.writeString(jsonString ?? "")
        let response = Response(headers: HTTPHeaders(), body: .init(buffer: buffer))
        response.headers.contentType = .json
        return req.eventLoop.makeSucceededFuture(response)
    }
    
}
