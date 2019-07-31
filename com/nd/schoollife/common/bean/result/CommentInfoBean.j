.bytecode 50.0
.class public synchronized com/nd/schoollife/common/bean/result/CommentInfoBean
.super com/nd/android/forumsdk/business/bean/ForumResultBase

.field private static final 'serialVersionUID' J = -6888000415002383142L


.field private 'comment_id' Ljava/lang/String;

.field private 'content' Ljava/lang/String;

.field private 'floor' I

.field private 'images' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;>;"

.field private 'isDeleted' Z

.field private 'post_id' J

.field private 'reply_info' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;>;"

.field private 'replys' J

.field private 'timestamp' J

.field private 'user' Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;

.method public <init>()V
aload 0
invokespecial com/nd/android/forumsdk/business/bean/ForumResultBase/<init>()V
aload 0
iconst_0
putfield com/nd/schoollife/common/bean/result/CommentInfoBean/isDeleted Z
return
.limit locals 1
.limit stack 2
.end method

.method public static getSerialversionuid()J
ldc2_w -6888000415002383142L
lreturn
.limit locals 0
.limit stack 2
.end method

.method public getComment_id()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/common/bean/result/CommentInfoBean/comment_id Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getContent()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/common/bean/result/CommentInfoBean/content Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFloor()I
aload 0
getfield com/nd/schoollife/common/bean/result/CommentInfoBean/floor I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getImages()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;>;"
aload 0
getfield com/nd/schoollife/common/bean/result/CommentInfoBean/images Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPost_id()J
aload 0
getfield com/nd/schoollife/common/bean/result/CommentInfoBean/post_id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getReply_info()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;>;"
aload 0
getfield com/nd/schoollife/common/bean/result/CommentInfoBean/reply_info Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getReplys()J
aload 0
getfield com/nd/schoollife/common/bean/result/CommentInfoBean/replys J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getTimestamp()J
aload 0
getfield com/nd/schoollife/common/bean/result/CommentInfoBean/timestamp J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
aload 0
getfield com/nd/schoollife/common/bean/result/CommentInfoBean/user Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isDeleted()Z
aload 0
getfield com/nd/schoollife/common/bean/result/CommentInfoBean/isDeleted Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setComment_id(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/CommentInfoBean/comment_id Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setContent(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/CommentInfoBean/content Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setDeleted(Z)V
aload 0
iload 1
putfield com/nd/schoollife/common/bean/result/CommentInfoBean/isDeleted Z
return
.limit locals 2
.limit stack 2
.end method

.method public setFloor(I)V
aload 0
iload 1
putfield com/nd/schoollife/common/bean/result/CommentInfoBean/floor I
return
.limit locals 2
.limit stack 2
.end method

.method public setImages(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/CommentInfoBean/images Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setPost_id(J)V
aload 0
lload 1
putfield com/nd/schoollife/common/bean/result/CommentInfoBean/post_id J
return
.limit locals 3
.limit stack 3
.end method

.method public setReply_info(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/CommentInfoBean/reply_info Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setReplys(J)V
aload 0
lload 1
putfield com/nd/schoollife/common/bean/result/CommentInfoBean/replys J
return
.limit locals 3
.limit stack 3
.end method

.method public setTimestamp(J)V
aload 0
lload 1
putfield com/nd/schoollife/common/bean/result/CommentInfoBean/timestamp J
return
.limit locals 3
.limit stack 3
.end method

.method public setUser(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/CommentInfoBean/user Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
return
.limit locals 2
.limit stack 2
.end method
