.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/com/GetSecPhone$GetSecPhoneReqParams
.super java/lang/Object
.implements com/nd/rj/common/serverinterfaces/UrlParamsConvert
.inner class public static GetSecPhoneReqParams inner com/nd/android/u/cloud/activity/welcome/com/GetSecPhone$GetSecPhoneReqParams outer com/nd/android/u/cloud/activity/welcome/com/GetSecPhone

.field public static final 'DEFAULT' J = -1L


.field public 'mUid' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc2_w -1L
putfield com/nd/android/u/cloud/activity/welcome/com/GetSecPhone$GetSecPhoneReqParams/mUid J
return
.limit locals 1
.limit stack 3
.end method

.method public doConvert()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/GetSecPhone$GetSecPhoneReqParams/mUid J
ldc2_w -1L
lcmp
ifeq L0
aload 1
ldc "uid"
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/GetSecPhone$GetSecPhoneReqParams/mUid J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L0:
aload 1
areturn
.limit locals 2
.limit stack 4
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/GetSecPhone$GetSecPhoneReqParams/mUid J
ldc2_w -1L
lcmp
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 4
.end method
