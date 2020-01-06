typedef Parser(obj);

Parser listParser = (parser) {
  return (List item) => item.map(parser);
};

class Response<Code> {
  const Response(this.status, this.data);
  final int status;
  final Code data;

  bool get succeed => status >= 200 && status < 300;
}