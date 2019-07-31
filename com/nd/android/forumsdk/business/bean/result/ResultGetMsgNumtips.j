.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips
.super com/nd/android/forumsdk/business/bean/ForumResultBase

.field private static final 'serialVersionUID' J = -1146474279790597144L


.field private 'comment' I

.field private 'latest_u' Ljava/lang/String;

.field private 'mention' J

.field private 'praise' I

.field private 'reply' I

.method public <init>()V
aload 0
invokespecial com/nd/android/forumsdk/business/bean/ForumResultBase/<init>()V
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/latest_u Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public getComment()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/comment I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLatest_u()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/latest_u Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMention()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/mention J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getPraise()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/praise I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getReply()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/reply I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setComment(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/comment I
return
.limit locals 2
.limit stack 2
.end method

.method public setLatest_u(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/latest_u Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMention(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/mention J
return
.limit locals 3
.limit stack 3
.end method

.method public setPraise(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/praise I
return
.limit locals 2
.limit stack 2
.end method

.method public setReply(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips/reply I
return
.limit locals 2
.limit stack 2
.end method
