.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/widget/action/XYTweetActionView
.super com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView

.method public <init>(Landroid/app/Activity;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/<init>(Landroid/app/Activity;)V
return
.limit locals 2
.limit stack 2
.end method

.method public initComponent(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/action/XYTweetActionView/activity Landroid/app/Activity;
iload 1
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
checkcast android/view/ViewStub
astore 2
aload 2
getstatic com/android/u/weibo/R$layout/xy_tweet_content_bottom I
invokevirtual android/view/ViewStub/setLayoutResource(I)V
aload 2
invokevirtual android/view/ViewStub/inflate()Landroid/view/View;
pop
aload 0
iload 1
invokespecial com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/initComponent(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public setLikeButtonBackground(Z)V
iload 1
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/action/XYTweetActionView/tvLike Landroid/widget/TextView;
getstatic com/android/u/weibo/R$drawable/xy_btn_like_state I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/widget/action/XYTweetActionView/tvLike Landroid/widget/TextView;
getstatic com/android/u/weibo/R$drawable/xy_btn_like_normal I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
return
.limit locals 2
.limit stack 5
.end method
