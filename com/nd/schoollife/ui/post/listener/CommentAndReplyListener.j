.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/listener/CommentAndReplyListener
.super java/lang/Object
.implements android/view/View$OnClickListener

.field private 'mInputContentManager' Lcom/nd/schoollife/ui/common/process/InputContentViewManager;

.field private 'mListener' Lcom/nd/schoollife/ui/square/listener/PositionListener;

.field private 'mParentView' Landroid/view/View;

.field private 'mPosition' I

.field private 'mType' Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;

.method public <init>(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/listener/CommentAndReplyListener/mType Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
aload 0
aload 2
putfield com/nd/schoollife/ui/post/listener/CommentAndReplyListener/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/listener/CommentAndReplyListener/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnonnull L1
L0:
return
L1:
ldc ""
astore 2
ldc ""
astore 4
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
instanceof com/nd/android/forumsdk/business/bean/result/PostInfoBean
ifeq L2
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
astore 1
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
ifnull L3
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getNickname()Ljava/lang/String;
astore 2
L3:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
aload 2
astore 3
L4:
aload 0
getfield com/nd/schoollife/ui/post/listener/CommentAndReplyListener/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
getfield com/nd/schoollife/ui/post/listener/CommentAndReplyListener/mType Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;
aload 3
aload 4
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/showCommentView(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$COMMENT_TYPE;Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/post/listener/CommentAndReplyListener/mListener Lcom/nd/schoollife/ui/square/listener/PositionListener;
ifnull L5
aload 0
getfield com/nd/schoollife/ui/post/listener/CommentAndReplyListener/mParentView Landroid/view/View;
ifnull L5
aload 0
getfield com/nd/schoollife/ui/post/listener/CommentAndReplyListener/mListener Lcom/nd/schoollife/ui/square/listener/PositionListener;
aload 0
getfield com/nd/schoollife/ui/post/listener/CommentAndReplyListener/mPosition I
aload 0
getfield com/nd/schoollife/ui/post/listener/CommentAndReplyListener/mParentView Landroid/view/View;
invokeinterface com/nd/schoollife/ui/square/listener/PositionListener/onPositionListener(ILandroid/view/View;)V 2
L5:
aload 0
getfield com/nd/schoollife/ui/post/listener/CommentAndReplyListener/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/getEditText()Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/requestFocus()Z
pop
aload 0
getfield com/nd/schoollife/ui/post/listener/CommentAndReplyListener/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/showInputMethod()V
return
L2:
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
instanceof com/nd/schoollife/common/bean/result/CommentInfoBean
ifeq L6
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/schoollife/common/bean/result/CommentInfoBean
astore 1
aload 1
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
ifnull L7
aload 1
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getNickname()Ljava/lang/String;
astore 2
L7:
aload 1
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getComment_id()Ljava/lang/String;
astore 4
aload 2
astore 3
goto L4
L6:
aload 2
astore 3
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
instanceof com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
ifeq L4
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
astore 1
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
ifnull L8
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getUser()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getNickname()Ljava/lang/String;
astore 2
L8:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/getOid()Ljava/lang/String;
astore 4
aload 2
astore 3
goto L4
.limit locals 5
.limit stack 4
.end method

.method public setParentView(Landroid/view/View;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/listener/CommentAndReplyListener/mParentView Landroid/view/View;
return
.limit locals 2
.limit stack 2
.end method

.method public setPosition(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/post/listener/CommentAndReplyListener/mPosition I
return
.limit locals 2
.limit stack 2
.end method

.method public setPositionListener(Lcom/nd/schoollife/ui/square/listener/PositionListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/listener/CommentAndReplyListener/mListener Lcom/nd/schoollife/ui/square/listener/PositionListener;
return
.limit locals 2
.limit stack 2
.end method
