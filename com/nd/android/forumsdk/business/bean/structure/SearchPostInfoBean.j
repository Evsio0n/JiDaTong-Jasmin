.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean
.super java/lang/Object

.field private 'id' J

.field private 'match_text' Ljava/lang/String;

.field private 'post' Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean/match_text Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public getId()J
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean/id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getMatch_text()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean/match_text Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPost()Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean/post Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setId(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean/id J
return
.limit locals 3
.limit stack 3
.end method

.method public setMatch_text(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean/match_text Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPost(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/SearchPostInfoBean/post Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
return
.limit locals 2
.limit stack 2
.end method
