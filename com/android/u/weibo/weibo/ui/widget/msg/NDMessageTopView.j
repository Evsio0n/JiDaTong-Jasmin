.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/widget/msg/NDMessageTopView
.super com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView

.field private 'rlTopAt' Landroid/widget/RelativeLayout;

.field private 'rlTopComment' Landroid/widget/RelativeLayout;

.field private 'rlTopPraise' Landroid/widget/RelativeLayout;

.method public <init>(Landroid/app/Activity;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/<init>(Landroid/app/Activity;)V
return
.limit locals 2
.limit stack 2
.end method

.method public initComponent(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/NDMessageTopView/activity Landroid/app/Activity;
iload 1
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
checkcast android/view/ViewStub
astore 2
aload 2
getstatic com/android/u/weibo/R$layout/nd_tweet_message_header I
invokevirtual android/view/ViewStub/setLayoutResource(I)V
aload 2
invokevirtual android/view/ViewStub/inflate()Landroid/view/View;
pop
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/NDMessageTopView/activity Landroid/app/Activity;
getstatic com/android/u/weibo/R$id/rlTopAt I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/android/u/weibo/weibo/ui/widget/msg/NDMessageTopView/rlTopAt Landroid/widget/RelativeLayout;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/NDMessageTopView/activity Landroid/app/Activity;
getstatic com/android/u/weibo/R$id/rlTopCmt I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/android/u/weibo/weibo/ui/widget/msg/NDMessageTopView/rlTopComment Landroid/widget/RelativeLayout;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/NDMessageTopView/activity Landroid/app/Activity;
getstatic com/android/u/weibo/R$id/rlTopPraise I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/android/u/weibo/weibo/ui/widget/msg/NDMessageTopView/rlTopPraise Landroid/widget/RelativeLayout;
aload 0
iload 1
invokespecial com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView/initComponent(I)V
return
.limit locals 3
.limit stack 3
.end method

.method public setTopMessageStatus(I)V
iload 1
tableswitch 0
L0
L1
L2
default : L3
L3:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/NDMessageTopView/rlTopAt Landroid/widget/RelativeLayout;
getstatic com/android/u/weibo/R$drawable/msg_top_left_pressed I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/NDMessageTopView/rlTopComment Landroid/widget/RelativeLayout;
getstatic com/android/u/weibo/R$drawable/msg_top_mid_btn I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/NDMessageTopView/rlTopPraise Landroid/widget/RelativeLayout;
getstatic com/android/u/weibo/R$drawable/msg_top_right_btn I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/NDMessageTopView/rlTopAt Landroid/widget/RelativeLayout;
getstatic com/android/u/weibo/R$drawable/msg_top_left_btn I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/NDMessageTopView/rlTopComment Landroid/widget/RelativeLayout;
getstatic com/android/u/weibo/R$drawable/msg_top_mid_pressed I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/NDMessageTopView/rlTopPraise Landroid/widget/RelativeLayout;
getstatic com/android/u/weibo/R$drawable/msg_top_right_btn I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
return
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/NDMessageTopView/rlTopAt Landroid/widget/RelativeLayout;
getstatic com/android/u/weibo/R$drawable/msg_top_left_btn I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/NDMessageTopView/rlTopComment Landroid/widget/RelativeLayout;
getstatic com/android/u/weibo/R$drawable/msg_top_mid_btn I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/NDMessageTopView/rlTopPraise Landroid/widget/RelativeLayout;
getstatic com/android/u/weibo/R$drawable/msg_top_right_pressed I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
return
.limit locals 2
.limit stack 2
.end method
