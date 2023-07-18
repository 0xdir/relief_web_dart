[![pub package](https://img.shields.io/pub/v/relief_web.svg)](https://pub.dev/packages/relief_web)
[![package publisher](https://img.shields.io/pub/publisher/relief_web.svg)](https://pub.dev/packages/relief_web/publisher)

A Future-based wrapper around the [Relief Web] API, to retrieve information on humanitarian news,
reports, training, jobs, and disasters, designed to be multi-platform with minimal dependencies,
for use in mobile, desktop, or browser apps.

[Relief Web]: https://reliefweb.int/

This is a community maintained library which has no association
with the United Nations Office for the Coordination of Humanitarian Affairs ([OCHA]).

[OCHA]: https://www.unocha.org/our-work/information-management

## Using

The easiest way to use this library is via the top-level ```ReliefWeb``` class.

```dart
import 'package:relief_web/relief_web.dart';

void main() async {
  /// Initialize the main object
  ReliefWeb reliefWeb = ReliefWeb();

  /// Get reports
  var reports = await reliefWeb.getReports();
  
  /// Do stuff with the reports
  print(reports.length);

  /// Close the connection
  reliefWeb.close();
}
```

## Getting Help

Submit an issue on [github].

[github]: https://github.com/0xdir/relief_web_dart

## This work builds upon:

1. [Relief Web](https://reliefweb.int/about)

Do check out their work too!

## How to contribute

All feedback and suggestions for improvements are welcome:

1. Open a discussion on [github]
2. Discuss proposed changes
3. Submit a PR (optional)

[github]: https://github.com/0xdir/relief_web_dart

## Support my work

This package is possible thanks to the people and companies
who donate money, services or time to keep the project running.

If you're interested in becoming a Sponsor, Backer or Contributor
to expand the project, please visit my [github sponsors page].

[github sponsors page]: https://github.com/sponsors/0xdir

Or buy me coffee at `0xdir.near`.