.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = 7029355552159183592L


.field public 'className' Ljava/lang/String;

.field public 'gender' I

.field public 'grade' Ljava/lang/String;

.field public 'homeTown' Ljava/lang/String;

.field public 'isFollow' I

.field public 'specialty' Ljava/lang/String;

.field public 'sysAvatarId' I

.field public 'uid' J

.field public 'userName' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public LoadFromJson(Lorg/json/JSONObject;)V
aload 1
ifnonnull L0
return
L0:
aload 0
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/uid J
aload 0
aload 1
ldc "name"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/userName Ljava/lang/String;
aload 0
aload 1
ldc "gender"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/gender I
aload 0
aload 1
ldc "classname"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/className Ljava/lang/String;
aload 0
aload 1
ldc "specialty"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/specialty Ljava/lang/String;
aload 0
aload 1
ldc "grade"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/grade Ljava/lang/String;
aload 0
aload 1
ldc "isfollow"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/isFollow I
aload 0
aload 1
ldc "nativecode"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/nd/android/u/cloud/helper/Utils/getHometownByCode(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/homeTown Ljava/lang/String;
aload 0
aload 0
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/uid J
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getSysAvatarId(J)I
putfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/sysAvatarId I
return
.limit locals 2
.limit stack 3
.end method

.method public setIsFollow(I)V
aload 0
iload 1
putfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/isFollow I
return
.limit locals 2
.limit stack 2
.end method
