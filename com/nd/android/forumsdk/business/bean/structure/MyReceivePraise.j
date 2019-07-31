.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/structure/MyReceivePraise
.super java/lang/Object

.field private 'from_string' Ljava/lang/String;

.field private 'post_info' Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;

.field private 'post_time' J

.field private 'user_info' Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/structure/MyReceivePraise/from_string Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public getFrom_string()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/MyReceivePraise/from_string Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPost_info()Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/MyReceivePraise/post_info Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPost_time()J
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/MyReceivePraise/post_time J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/MyReceivePraise/user_info Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setFrom_string(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/MyReceivePraise/from_string Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPost_info(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/MyReceivePraise/post_info Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
return
.limit locals 2
.limit stack 2
.end method

.method public setPost_time(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/structure/MyReceivePraise/post_time J
return
.limit locals 3
.limit stack 3
.end method

.method public setUser_info(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/MyReceivePraise/user_info Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
return
.limit locals 2
.limit stack 2
.end method
