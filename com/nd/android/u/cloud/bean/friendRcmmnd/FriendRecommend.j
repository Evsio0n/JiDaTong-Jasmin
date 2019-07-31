.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend
.super java/lang/Object

.field public final 'ClassMates' I

.field public final 'Natives' I

.field public 'relationShip' Ljava/lang/String;

.field public 'sysAvatarId' I

.field public 'uid' J

.field public 'userName' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend/Natives I
aload 0
iconst_2
putfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend/ClassMates I
return
.limit locals 1
.limit stack 2
.end method

.method public LoadFromJson(Lorg/json/JSONObject;)V
aload 1
ifnonnull L0
return
L0:
aload 0
aload 1
ldc "rfid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend/uid J
aload 0
aload 1
ldc "username"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend/userName Ljava/lang/String;
aload 1
ldc "flag"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
iconst_1
if_icmpne L1
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
ldc_w 2131493658
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend/relationShip Ljava/lang/String;
L2:
aload 0
aload 0
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend/uid J
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getSysAvatarId(J)I
putfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend/sysAvatarId I
return
L1:
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
ldc_w 2131493637
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend/relationShip Ljava/lang/String;
goto L2
.limit locals 2
.limit stack 3
.end method
