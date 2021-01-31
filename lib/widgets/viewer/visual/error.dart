import 'dart:io';

import 'package:aves/model/entry.dart';
import 'package:aves/theme/icons.dart';
import 'package:aves/widgets/collection/empty.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ErrorView extends StatefulWidget {
  final AvesEntry entry;
  final VoidCallback onTap;

  const ErrorView({
    @required this.entry,
    @required this.onTap,
  });

  @override
  _ErrorViewState createState() => _ErrorViewState();
}

class _ErrorViewState extends State<ErrorView> {
  Future<bool> _exists;

  AvesEntry get entry => widget.entry;

  @override
  void initState() {
    super.initState();
    _exists = entry.path != null ? File(entry.path).exists() : SynchronousFuture(true);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onTap?.call(),
      // use container to expand constraints, so that the user can tap anywhere
      child: Container(
        // opaque to cover potential lower quality layer below
        color: Colors.black,
        child: FutureBuilder<bool>(
            future: _exists,
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.done) return SizedBox();
              final exists = snapshot.data;
              return EmptyContent(
                icon: AIcons.error,
                text: exists ? 'Oops!' : 'The file no longer exists.',
                alignment: Alignment.center,
              );
            }),
      ),
    );
  }
}
