.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/priv/PostPraiseParams
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = -3480677029082338807L


.field private 'atype' Ljava/lang/String;

.field private 'dim' Ljava/lang/String;

.field private 'from_string' Ljava/lang/String;

.field private 'post_id' J

.field private 'post_type' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getAtype()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/priv/PostPraiseParams/atype Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDim()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/priv/PostPraiseParams/dim Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFromString()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/priv/PostPraiseParams/from_string Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPostId()J
aload 0
getfield com/nd/android/forumsdk/business/bean/priv/PostPraiseParams/post_id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getPostType()I
aload 0
getfield com/nd/android/forumsdk/business/bean/priv/PostPraiseParams/post_type I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setAtype(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/priv/PostPraiseParams/atype Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setDim(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/priv/PostPraiseParams/dim Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFromString(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/priv/PostPraiseParams/from_string Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPostId(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/priv/PostPraiseParams/post_id J
return
.limit locals 3
.limit stack 3
.end method

.method public setPostType(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/priv/PostPraiseParams/post_type I
return
.limit locals 2
.limit stack 2
.end method
