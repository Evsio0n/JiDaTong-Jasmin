.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/result/NewsRelateTopicBean
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = -6105792424763757345L


.field private 'post_id' J

.field private 'title' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/NewsRelateTopicBean/title Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public getPostId()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsRelateTopicBean/post_id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getTitle()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/NewsRelateTopicBean/title Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setPostId(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsRelateTopicBean/post_id J
return
.limit locals 3
.limit stack 3
.end method

.method public setTitle(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/NewsRelateTopicBean/title Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
