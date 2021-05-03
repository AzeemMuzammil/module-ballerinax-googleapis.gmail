/*
 * Copyright (c) 2021 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
 *
 * WSO2 Inc. licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file except
 * in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package org.ballerinalang.googleapis.gmail;

import io.ballerina.runtime.api.Environment;
import io.ballerina.runtime.api.Future;
import io.ballerina.runtime.api.Module;
import io.ballerina.runtime.api.async.Callback;
import io.ballerina.runtime.api.async.StrandMetadata;
import io.ballerina.runtime.api.creators.ErrorCreator;
import io.ballerina.runtime.api.creators.ValueCreator;
import io.ballerina.runtime.api.types.MethodType;
import io.ballerina.runtime.api.utils.StringUtils;
import io.ballerina.runtime.api.values.BArray;
import io.ballerina.runtime.api.values.BError;
import io.ballerina.runtime.api.values.BMap;
import io.ballerina.runtime.api.values.BObject;
import io.ballerina.runtime.api.values.BString;

import java.util.ArrayList;

import static io.ballerina.runtime.api.utils.StringUtils.fromString;

public class HttpNativeOperationHandler {

    public static Object callOnNewEmail(Environment env, BObject bHttpService, BMap<BString, Object> message) {
        return invokeRemoteFunction(env, bHttpService, message, "callOnNewEmail", "onNewEmail");
    }

    public static Object callOnNewThread(Environment env, BObject bHttpService, BMap<BString, Object> message) {
        return invokeRemoteFunction(env, bHttpService, message, "callOnNewThread", "onNewThread");
    }

    public static Object callOnNewLabeledEmail(Environment env, BObject bHttpService, BMap<BString, Object> message) {
        return invokeRemoteFunction(env, bHttpService, message, "callOnNewLabeledEmail", "onNewLabeledEmail");
    }

    public static Object callOnNewStarredEmail(Environment env, BObject bHttpService, BMap<BString, Object> message) {
        return invokeRemoteFunction(env, bHttpService, message, "callOnNewStarredEmail", "onNewStarredEmail");
    }

    public static Object callOnLabelRemovedEmail(Environment env, BObject bHttpService, BMap<BString, Object> message) {
        return invokeRemoteFunction(env, bHttpService, message, "callOnLabelRemovedEmail", "onLabelRemovedEmail");
    }

    public static Object callOnStarRemovedEmail(Environment env, BObject bHttpService, BMap<BString, Object> message) {
        return invokeRemoteFunction(env, bHttpService, message, "callOnStarRemovedEmail", "onStarRemovedEmail");
    }

    public static Object callOnNewAttachment(Environment env, BObject bHttpService, BMap<BString, Object> message) {
        return invokeRemoteFunction(env, bHttpService, message, "callOnNewAttachment", "onNewAttachment");
    }    

    public static BArray getServiceMethodNames(BObject bSubscriberService) {
        ArrayList<BString> methodNamesList = new ArrayList<>();
        for (MethodType method : bSubscriberService.getType().getMethods()) {
            methodNamesList.add(StringUtils.fromString(method.getName()));
        }
        return ValueCreator.createArrayValue(methodNamesList.toArray(BString[]::new));
    }

    private static Object invokeRemoteFunction(Environment env, BObject bHttpService, BMap<BString, Object> message,
                                               String parentFunctionName, String remoteFunctionName) {
        Future balFuture = env.markAsync();
        Module module = ModuleUtils.getModule();
        StrandMetadata metadata = new StrandMetadata(module.getOrg(), module.getName(), module.getVersion(),
                parentFunctionName);
        Object[] args = new Object[]{message, true};
        env.getRuntime().invokeMethodAsync(bHttpService, remoteFunctionName, null, metadata, new Callback() {
            @Override
            public void notifySuccess(Object result) {
                balFuture.complete(result);
            }

            @Override
            public void notifyFailure(BError bError) {
                BString errorMessage = fromString("service method invocation failed: " + bError.getErrorMessage());
                BError invocationError = ErrorCreator.createError(errorMessage, bError);
                balFuture.complete(invocationError);
            }
        }, args);
        return null;
    }
}
