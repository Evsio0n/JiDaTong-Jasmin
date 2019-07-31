.bytecode 50.0
.class public abstract interface com/nd/android/backpacksystem/serverinterface/ServerInterface
.super java/lang/Object
.inner class public static final enum HttpMethod inner com/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod outer com/nd/android/backpacksystem/serverinterface/ServerInterface

.method public abstract communicate(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)Lcom/nd/android/backpacksystem/serverinterface/RequestResult;
.end method

.method public abstract getHttpMethod()Lcom/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod;
.end method

.method public abstract requestObj(Ljava/lang/Object;)Lorg/json/JSONObject;
.end method

.method public abstract requestStr()Ljava/lang/String;
.end method

.method public abstract requestUrlParams(Ljava/lang/Object;)Ljava/util/Map;
.signature "(Ljava/lang/Object;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
.end method

.method public abstract resolveResponse(Lcom/nd/android/backpacksystem/serverinterface/RequestResult;)Lcom/nd/android/backpacksystem/serverinterface/ResolvedResponse;
.end method

.method public abstract resolveSuccessResponse(Lorg/json/JSONObject;)Ljava/lang/Object;
.throws org/json/JSONException
.end method
