.bytecode 50.0
.class public synchronized abstract com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class public static abstract interface TopMessageClickListener inner com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView$TopMessageClickListener outer com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView

.field protected static final 'AT_TYPE' I = 0


.field protected static final 'COMMENT_TYPE' I = 1


.field protected static final 'PRAISE_TYPE' I = 2


.field protected static final 'SHOW_MAX_COUNT' I = 99


.field protected 'activity' Landroid/app/Activity;

.field private 'topMessageClickListener' Lcom/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView$TopMessageClickListener;

.field private 'tvAtMeUnreadCount' Landroid/widget/TextView;

.field private 'tvCommentUnreadCount' Landroid/widget/TextView;

.field private 'tvLikeUnreadCount' Landroid/widget/TextView;

.method <init>(Landroid/app/Activity;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/activity Landroid/app/Activity;
return
.limit locals 2
.limit stack 2
.end method

.method private initEvrnt()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/activity Landroid/app/Activity;
getstatic com/android/u/weibo/R$id/back I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/activity Landroid/app/Activity;
getstatic com/android/u/weibo/R$id/rlTopAt I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/activity Landroid/app/Activity;
getstatic com/android/u/weibo/R$id/rlTopCmt I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/activity Landroid/app/Activity;
getstatic com/android/u/weibo/R$id/rlTopPraise I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method public initComponent(I)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/activity Landroid/app/Activity;
getstatic com/android/u/weibo/R$id/tvTopAtCnt I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/tvAtMeUnreadCount Landroid/widget/TextView;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/activity Landroid/app/Activity;
getstatic com/android/u/weibo/R$id/tvTopCmtCnt I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/tvCommentUnreadCount Landroid/widget/TextView;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/activity Landroid/app/Activity;
getstatic com/android/u/weibo/R$id/tvTopPraiseCnt I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/tvLikeUnreadCount Landroid/widget/TextView;
aload 0
invokespecial com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/initEvrnt()V
return
.limit locals 2
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/android/u/weibo/R$id/back I
if_icmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/activity Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
L1:
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/rlTopAt I
if_icmpne L2
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/topMessageClickListener Lcom/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView$TopMessageClickListener;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/topMessageClickListener Lcom/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView$TopMessageClickListener;
invokeinterface com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView$TopMessageClickListener/handleAtMeClickEvent()V 0
return
L2:
iload 2
getstatic com/android/u/weibo/R$id/rlTopCmt I
if_icmpne L3
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/topMessageClickListener Lcom/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView$TopMessageClickListener;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/topMessageClickListener Lcom/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView$TopMessageClickListener;
invokeinterface com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView$TopMessageClickListener/handleCommentClickEvent()V 0
return
L3:
iload 2
getstatic com/android/u/weibo/R$id/rlTopPraise I
if_icmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/topMessageClickListener Lcom/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView$TopMessageClickListener;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/topMessageClickListener Lcom/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView$TopMessageClickListener;
invokeinterface com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView$TopMessageClickListener/handleLikeClickEvent()V 0
return
.limit locals 3
.limit stack 2
.end method

.method public setAtMeUnreadCount(I)V
aload 0
iload 1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/tvAtMeUnreadCount Landroid/widget/TextView;
invokevirtual com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/setTextCount(ILandroid/widget/TextView;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setCommentUnreadCount(I)V
aload 0
iload 1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/tvCommentUnreadCount Landroid/widget/TextView;
invokevirtual com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/setTextCount(ILandroid/widget/TextView;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setLikeUnreadCount(I)V
aload 0
iload 1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/tvLikeUnreadCount Landroid/widget/TextView;
invokevirtual com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/setTextCount(ILandroid/widget/TextView;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setTextCount(ILandroid/widget/TextView;)V
iload 1
ifle L0
iload 1
bipush 99
if_icmple L1
aload 2
ldc "99+"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L1:
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 2
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 3
.limit stack 3
.end method

.method public setTopMessageClickListener(Lcom/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView$TopMessageClickListener;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/topMessageClickListener Lcom/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView$TopMessageClickListener;
return
.limit locals 2
.limit stack 2
.end method

.method public abstract setTopMessageStatus(I)V
.end method
