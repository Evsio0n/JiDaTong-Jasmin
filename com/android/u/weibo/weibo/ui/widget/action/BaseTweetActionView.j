.bytecode 50.0
.class public synchronized abstract com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class public static abstract interface TweetActionClickListener inner com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView$TweetActionClickListener outer com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView

.field protected 'activity' Landroid/app/Activity;

.field protected 'tvLike' Landroid/widget/TextView;

.field private 'tweetActionClickListener' Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView$TweetActionClickListener;

.method <init>(Landroid/app/Activity;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/activity Landroid/app/Activity;
return
.limit locals 2
.limit stack 2
.end method

.method private initEvent()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/activity Landroid/app/Activity;
getstatic com/android/u/weibo/R$id/tvTransmit I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/activity Landroid/app/Activity;
getstatic com/android/u/weibo/R$id/tvComment I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/activity Landroid/app/Activity;
getstatic com/android/u/weibo/R$id/tvLike I
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
getfield com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/activity Landroid/app/Activity;
getstatic com/android/u/weibo/R$id/tvLike I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/tvLike Landroid/widget/TextView;
aload 0
invokespecial com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/initEvent()V
return
.limit locals 2
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/android/u/weibo/R$id/tvTransmit I
if_icmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/tweetActionClickListener Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView$TweetActionClickListener;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/tweetActionClickListener Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView$TweetActionClickListener;
invokeinterface com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView$TweetActionClickListener/handleTransmitClickEvent()V 0
L1:
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/tvComment I
if_icmpne L2
aload 0
getfield com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/tweetActionClickListener Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView$TweetActionClickListener;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/tweetActionClickListener Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView$TweetActionClickListener;
invokeinterface com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView$TweetActionClickListener/handleCommentClickEvent()V 0
return
L2:
iload 2
getstatic com/android/u/weibo/R$id/tvLike I
if_icmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/tweetActionClickListener Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView$TweetActionClickListener;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/tweetActionClickListener Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView$TweetActionClickListener;
invokeinterface com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView$TweetActionClickListener/handleLikeClickEvent()V 0
return
.limit locals 3
.limit stack 2
.end method

.method public abstract setLikeButtonBackground(Z)V
.end method

.method public setTweetActionListener(Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView$TweetActionClickListener;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/tweetActionClickListener Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView$TweetActionClickListener;
return
.limit locals 2
.limit stack 2
.end method
