.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/structure/MyReceiveAtBean
.super java/lang/Object

.field private 'post_id' J

.field private 'post_info' Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;

.field private 'reply_info' Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;

.field private 'scope' Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;

.field private 'type' Ljava/lang/String;

.field private 'user_info' Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/structure/MyReceiveAtBean/type Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public getPost_id()J
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/MyReceiveAtBean/post_id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getPost_info()Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/MyReceiveAtBean/post_info Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getReply_info()Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/MyReceiveAtBean/reply_info Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/MyReceiveAtBean/scope Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getType()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/MyReceiveAtBean/type Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/MyReceiveAtBean/user_info Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setPost_id(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/structure/MyReceiveAtBean/post_id J
return
.limit locals 3
.limit stack 3
.end method

.method public setPost_info(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/MyReceiveAtBean/post_info Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
return
.limit locals 2
.limit stack 2
.end method

.method public setReply_info(Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/MyReceiveAtBean/reply_info Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
return
.limit locals 2
.limit stack 2
.end method

.method public setScope(Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/MyReceiveAtBean/scope Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
return
.limit locals 2
.limit stack 2
.end method

.method public setType(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/MyReceiveAtBean/type Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/MyReceiveAtBean/user_info Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
return
.limit locals 2
.limit stack 2
.end method
