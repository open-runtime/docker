/* Copyright (C) S. Brett Sutton - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Brett Sutton <bsutton@onepub.dev>, Jan 2022
 */

import 'package:dcli/dcli.dart';
import 'package:docker/docker.dart';
import 'package:path/path.dart';
import 'package:test/test.dart';

void main() {
  test('build ...', () async {
    final pathToHelloDocker = join(DartProject.self.pathToProjectRoot, 'test',
        'fixtures', 'hello.dockerfile');
    build(
      pathToDockerFile: pathToHelloDocker,
      imageName: 'hello',
      version: '1.0.0',
      buildArgs: ['hello=hi'],
    );
  });
}
