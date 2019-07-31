.bytecode 50.0
.class public abstract interface com/nd/rj/common/serverinterfaces/ServerInterface
.super java/lang/Object
.inner class public static final enum HttpMethod inner com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod outer com/nd/rj/common/serverinterfaces/ServerInterface

.method public abstract communicate(Landroid/content/Context;Lcom/nd/rj/common/serverinterfaces/UrlParamsConvert;Lcom/nd/rj/common/serverinterfaces/JsonBodyParamsConvert;)Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;
.end method

.method public abstract getHttpMethod()Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
.end method

.method public abstract requestUrl()Ljava/lang/String;
.end method

.method public abstract resolveBusinessResponse(Lorg/json/JSONObject;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
.end method

.method public abstract resolveResponse(Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
.end method
