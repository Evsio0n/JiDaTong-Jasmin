.bytecode 50.0
.class public synchronized com/product/android/commonInterface/weibo/CommonFriendInfo
.super java/lang/Object

.field public 'data' I

.field public 'nickName' Ljava/lang/String;

.field public 'uid' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lconst_0
putfield com/product/android/commonInterface/weibo/CommonFriendInfo/uid J
aload 0
ldc ""
putfield com/product/android/commonInterface/weibo/CommonFriendInfo/nickName Ljava/lang/String;
aload 0
iconst_0
putfield com/product/android/commonInterface/weibo/CommonFriendInfo/data I
return
.limit locals 1
.limit stack 3
.end method

.method public LoadFromJson(Lorg/json/JSONObject;)V
.catch org/json/JSONException from L0 to L1 using L2
L0:
aload 0
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
putfield com/product/android/commonInterface/weibo/CommonFriendInfo/uid J
aload 0
aload 1
ldc "data"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/weibo/CommonFriendInfo/data I
aload 0
aload 1
ldc "nickname"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/weibo/CommonFriendInfo/nickName Ljava/lang/String;
L1:
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
return
.limit locals 2
.limit stack 3
.end method
