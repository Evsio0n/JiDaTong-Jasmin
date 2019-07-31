.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicRequestParams
.super java/lang/Object
.implements com/nd/rj/common/serverinterfaces/JsonBodyParamsConvert
.inner class public static GetFriendPicRequestParams inner com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicRequestParams outer com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic

.field public 'mType' Ljava/lang/String;

.field public 'mUnitId' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public doConvert()Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
L0:
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicRequestParams/mType Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 1
ldc "type"
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicRequestParams/mType Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicRequestParams/mUnitId Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 1
ldc "unit_id"
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicRequestParams/mUnitId Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L3:
aload 1
areturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicRequestParams/mType Ljava/lang/String;
ldc "Android_large"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicRequestParams/mType Ljava/lang/String;
ldc "Android_small"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicRequestParams/mUnitId Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method
