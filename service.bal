import ballerina/http;
import ballerina/uuid;

map<string> urlStore = {};

service / on new http:Listener(8080) {

    resource function post shorten(@http:Payload json body) returns json|error {
        string longUrl = check body.url;
        string key = uuid:createType1AsString().substring(0, 6);
        urlStore[key] = longUrl;
        return { "key": key, "short_url": "/resolve/" + key };
    }

    resource function get resolve/[string key]() returns json|http:NotFound {
        string? longUrl = urlStore[key];
        if longUrl is string {
            return { "original_url": longUrl };
        }
        return http:NOT_FOUND;
    }
}