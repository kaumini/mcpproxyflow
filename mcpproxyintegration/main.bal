import ballerina/mcp;

listener mcp:StreamableHttpListener mcpListener = new (8080);

@mcp:StreamableHttpServiceConfig {info: {name: "MCP proxy serv 1", version: "1.0.0"}}
service mcp:StreamableHttpService /mcp on mcpListener {
    remote function ToolNumber1() returns string {
        return "The tool 1";
    }

}
