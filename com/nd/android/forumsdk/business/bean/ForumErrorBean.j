.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/ForumErrorBean
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = -5940121071826407048L


.field private 'code' Ljava/lang/String;

.field private 'msg' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getCode()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/ForumErrorBean/code Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMsg()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/ForumErrorBean/msg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setCode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/ForumErrorBean/code Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMsg(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/ForumErrorBean/msg Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
