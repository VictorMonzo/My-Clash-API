class ClientError {
  final String reason;
  final String message;

  ClientError(this.reason, this.message);

  static ClientError fromJson(json) =>
      ClientError(json['reason'], json['message']);
}
