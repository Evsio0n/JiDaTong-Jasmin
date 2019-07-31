.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
.super com/nd/android/forumsdk/business/bean/ForumResultBase

.field private static final 'serialVersionUID' J = -4353126622418121746L


.field private 'content' Ljava/lang/String;

.field private 'floor_id' Ljava/lang/String;

.field private 'oid' Ljava/lang/String;

.field private 'post_time' J

.field private 'rid' Ljava/lang/String;

.field private 'to_floor_id' Ljava/lang/String;

.field private 'to_user' Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;

.field private 'uid' J

.field private 'user' Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;

.method public <init>()V
aload 0
invokespecial com/nd/android/forumsdk/business/bean/ForumResultBase/<init>()V
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/content Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/floor_id Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/oid Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/to_floor_id Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public static getSerialversionuid()J
ldc2_w -4353126622418121746L
lreturn
.limit locals 0
.limit stack 2
.end method

.method public getContent()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/content Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFloor_id()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/floor_id Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOid()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/oid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPost_time()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/post_time J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getRid()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/rid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTo_floor_id()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/to_floor_id Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTo_user()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/to_user Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUid()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/user Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setContent(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/content Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFloor_id(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/floor_id Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setOid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/oid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPost_time(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/post_time J
return
.limit locals 3
.limit stack 3
.end method

.method public setRid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/rid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setTo_floor_id(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/to_floor_id Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setTo_user(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/to_user Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUser(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/user Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
return
.limit locals 2
.limit stack 2
.end method
