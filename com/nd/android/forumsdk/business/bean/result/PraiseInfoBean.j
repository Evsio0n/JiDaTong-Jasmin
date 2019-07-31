.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/result/PraiseInfoBean
.super com/nd/android/forumsdk/business/bean/ForumResultBase

.field private static final 'serialVersionUID' J = -2323039123588899580L


.field private 'atype' Ljava/lang/String;

.field private 'from_string' Ljava/lang/String;

.field private 'from_uid' J

.field private 'oid' I

.field private 'otype' Ljava/lang/String;

.field private 'post_time' J

.field private 'to_uid' J

.method public <init>()V
aload 0
invokespecial com/nd/android/forumsdk/business/bean/ForumResultBase/<init>()V
aload 0
ldc "n"
putfield com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/otype Ljava/lang/String;
aload 0
ldc "p"
putfield com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/atype Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/from_string Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public getAtype()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/atype Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFromString()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/from_string Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFromUid()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/from_uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getOid()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/oid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getOtype()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/otype Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPostTime()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/post_time J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getToUid()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/to_uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public setAtype(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/atype Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFromString(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/from_string Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setFromUid(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/from_uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setOid(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/oid I
return
.limit locals 2
.limit stack 2
.end method

.method public setOtype(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/otype Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPostTime(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/post_time J
return
.limit locals 3
.limit stack 3
.end method

.method public setToUid(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/PraiseInfoBean/to_uid J
return
.limit locals 3
.limit stack 3
.end method
