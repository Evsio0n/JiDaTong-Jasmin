.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/structure/UserInfoBean
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = 1L


.field private 'nickname' Ljava/lang/String;

.field private 'sysavatar' I

.field private 'uid' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/structure/UserInfoBean/nickname Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public getNickname()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/UserInfoBean/nickname Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSysavatar()I
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/UserInfoBean/sysavatar I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUid()J
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/UserInfoBean/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public setNickname(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/UserInfoBean/nickname Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSysavatar(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/structure/UserInfoBean/sysavatar I
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/structure/UserInfoBean/uid J
return
.limit locals 3
.limit stack 3
.end method
