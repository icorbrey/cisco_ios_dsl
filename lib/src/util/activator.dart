import "dart:mirrors";

/// A generic activation class.
class Activator {
  
  /// Creates an instance of the [type].
  static createInstance(Type type, {
    Symbol constructor = const Symbol(""),
    List arguments = const [],
    Map<Symbol, dynamic> namedArguments = const {}
  }) {
    var typeMirror = reflectType(type);
    if (typeMirror is ClassMirror) {
      return typeMirror
          .newInstance(constructor, arguments, namedArguments)
          .reflectee;
    } else {
      throw ArgumentError("Cannot create the instance of the type '$type'.");
    }
  }
}
