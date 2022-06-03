class IRequest {
  Future request(String uri) async {}
  Future post(String uri, json) async {}
}