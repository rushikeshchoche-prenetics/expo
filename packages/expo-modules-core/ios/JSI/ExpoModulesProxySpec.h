// Copyright 2018-present 650 Industries. All rights reserved.

#pragma once

#ifndef __cplusplus
#error This file must be compiled as Obj-C++. If you are importing it, you must change your file extension to .mm.
#endif

#import <jsi/jsi.h>
#import <ReactCommon/RCTTurboModule.h>

namespace expo {

class JSI_EXPORT ExpoModulesProxySpec : public ObjCTurboModule {
public:
  ExpoModulesProxySpec(const ObjCTurboModule::InitParams &params);
}

} // namespace expo
