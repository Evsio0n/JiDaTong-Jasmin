.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = 1L


.field private 'timestamp' J

.field private 'user_info' Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getTimestamp()J
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean/timestamp J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean/user_info Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setTimestamp(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean/timestamp J
return
.limit locals 3
.limit stack 3
.end method

.method public setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean/user_info Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
return
.limit locals 2
.limit stack 2
.end method
