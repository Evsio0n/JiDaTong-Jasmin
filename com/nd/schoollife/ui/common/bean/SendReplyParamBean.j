.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/bean/SendReplyParamBean
.super com/nd/schoollife/ui/common/bean/BaseParamBean

.field private static final 'serialVersionUID' J = 1L


.field private 'commentId' Ljava/lang/String;

.field private 'content' Ljava/lang/String;

.field private 'mention' [J

.field private 'postId' J

.field private 'replyToNickName' Ljava/lang/String;

.field private 'userId' J

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/bean/BaseParamBean/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getCommentId()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/common/bean/SendReplyParamBean/commentId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getContent()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/common/bean/SendReplyParamBean/content Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMention()[J
aload 0
getfield com/nd/schoollife/ui/common/bean/SendReplyParamBean/mention [J
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPostId()J
aload 0
getfield com/nd/schoollife/ui/common/bean/SendReplyParamBean/postId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getReplyToNickName()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/common/bean/SendReplyParamBean/replyToNickName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUserId()J
aload 0
getfield com/nd/schoollife/ui/common/bean/SendReplyParamBean/userId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public setCommentId(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/bean/SendReplyParamBean/commentId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setContent(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/bean/SendReplyParamBean/content Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMention([J)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/bean/SendReplyParamBean/mention [J
return
.limit locals 2
.limit stack 2
.end method

.method public setPostId(J)V
aload 0
lload 1
putfield com/nd/schoollife/ui/common/bean/SendReplyParamBean/postId J
return
.limit locals 3
.limit stack 3
.end method

.method public setReplyToNickName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/bean/SendReplyParamBean/replyToNickName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUserId(J)V
aload 0
lload 1
putfield com/nd/schoollife/ui/common/bean/SendReplyParamBean/userId J
return
.limit locals 3
.limit stack 3
.end method
