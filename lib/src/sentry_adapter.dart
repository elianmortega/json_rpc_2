import 'package:sentry/sentry.dart';

mixin SentryAdapter {
  void addSentryRequestBreadcrumb(Map<String, dynamic> message) =>
      Sentry.addBreadcrumb(
        Breadcrumb(
          type: 'wss',
          category: 'request',
          data: <String, dynamic>{
            'message': message,
          },
        ),
      );
  void addSentryResponseBreadcrumb(Map<String, dynamic> message) =>
      Sentry.addBreadcrumb(
        Breadcrumb(
          type: 'wss',
          category: 'response',
          data: <String, dynamic>{
            'message': message,
          },
        ),
      );
}
