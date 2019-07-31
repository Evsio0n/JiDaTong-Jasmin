.bytecode 50.0
.class public synchronized com/product/android/commonInterface/main/AppMenu
.super java/lang/Object

.field private 'appMenuCode' Ljava/lang/String;

.field private 'appMenuName' Ljava/lang/String;

.field private 'appMenuType' Ljava/lang/String;

.field private 'appUrl' Ljava/lang/String;

.field private 'appid' J

.field private 'seq' J

.method public <init>(Lorg/json/JSONObject;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokespecial com/product/android/commonInterface/main/AppMenu/setJsonValue(Lorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 2
.end method

.method private setJsonValue(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "appid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/commonInterface/main/AppMenu/appid J
aload 0
aload 1
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/main/AppMenu/appMenuCode Ljava/lang/String;
aload 0
aload 1
ldc "name"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/main/AppMenu/appMenuName Ljava/lang/String;
aload 0
aload 1
ldc "menutype"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/main/AppMenu/appMenuType Ljava/lang/String;
aload 0
aload 1
ldc "url"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/main/AppMenu/appUrl Ljava/lang/String;
aload 0
aload 1
ldc "seq"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/commonInterface/main/AppMenu/seq J
return
.limit locals 2
.limit stack 3
.end method

.method public getAppMenuCode()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/main/AppMenu/appMenuCode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getAppMenuName()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/main/AppMenu/appMenuName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getAppMenuType()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/main/AppMenu/appMenuType Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getAppUrl()Ljava/lang/String;
aload 0
getfield com/product/android/commonInterface/main/AppMenu/appUrl Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getAppid()J
aload 0
getfield com/product/android/commonInterface/main/AppMenu/appid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getSeq()J
aload 0
getfield com/product/android/commonInterface/main/AppMenu/seq J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public setAppMenuCode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/main/AppMenu/appMenuCode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setAppMenuName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/main/AppMenu/appMenuName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setAppMenuType(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/main/AppMenu/appMenuType Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setAppUrl(Ljava/lang/String;)V
aload 0
aload 1
putfield com/product/android/commonInterface/main/AppMenu/appUrl Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setAppid(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/main/AppMenu/appid J
return
.limit locals 3
.limit stack 3
.end method

.method public setSeq(J)V
aload 0
lload 1
putfield com/product/android/commonInterface/main/AppMenu/seq J
return
.limit locals 3
.limit stack 3
.end method

.method public toJsonObject()Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
L0:
aload 1
ldc "appid"
aload 0
getfield com/product/android/commonInterface/main/AppMenu/appid J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 1
ldc "code"
aload 0
getfield com/product/android/commonInterface/main/AppMenu/appMenuCode Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "name"
aload 0
getfield com/product/android/commonInterface/main/AppMenu/appMenuName Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "menutype"
aload 0
getfield com/product/android/commonInterface/main/AppMenu/appMenuType Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "url"
aload 0
getfield com/product/android/commonInterface/main/AppMenu/appUrl Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "seq"
aload 0
getfield com/product/android/commonInterface/main/AppMenu/seq J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 1
areturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
aload 1
areturn
.limit locals 3
.limit stack 4
.end method
