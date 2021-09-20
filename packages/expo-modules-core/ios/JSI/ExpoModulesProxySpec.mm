// Copyright 2018-present 650 Industries. All rights reserved.

#import "ExpoModulesProxySpec.h"

using namespace facebook;

namespace expo {
  static jsi::Value __hostFunction_ExpoModulesProxySpec_callMethodAsync(jsi::Runtime &rt, TurboModule &turboModule, const jsi::Value *args, size_t count) {
    return static_cast<ObjCTurboModule &>(turboModule).invokeObjCMethod(rt, VoidKind, "callMethodAsync", @selector(callMethodAsync:), args, count);
  }

  ExpoModulesProxySpec::ExpoModulesProxySpec(const ObjCTurboModule::InitParams &params) : ObjCTurboModule(params) {
    methodMap_["callMethodAsync"] = MethodMetadata {1, __hostFunction_ExpoModulesProxySpec_callMethodAsync};
  }
} // namespace expo
