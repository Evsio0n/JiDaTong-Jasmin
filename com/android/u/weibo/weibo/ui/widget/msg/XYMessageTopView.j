.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView
.super com/android/u/weibo/weibo/ui/widget/msg/BaseMessageTopView

.field private 'topAtBottomLine' Landroid/view/View;

.field private 'topCommentBottomLine' Landroid/view/View;

.field private 'topLikeBottomLine' Landroid/view/View;

.field private 'tvTopAt' Landroid/widget/TextView;

.field private 'tvTopComment' Landroid/widget/TextView;

.field private 'tvTopLike' Landroid/widget/TextView;

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
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/activity Landroid/app/Activity;
iload 1
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
checkcast android/view/ViewStub
astore 2
aload 2
getstatic com/android/u/weibo/R$layout/xy_tweet_header_message I
invokevirtual android/view/ViewStub/setLayoutResource(I)V
aload 2
invokevirtual android/view/ViewStub/inflate()Landroid/view/View;
pop
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/activity Landroid/app/Activity;
getstatic com/android/u/weibo/R$id/tvTopAtMe I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopAt Landroid/widget/TextView;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/activity Landroid/app/Activity;
getstatic com/android/u/weibo/R$id/tvTopCmt I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopComment Landroid/widget/TextView;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/activity Landroid/app/Activity;
getstatic com/android/u/weibo/R$id/tvTopPraise I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopLike Landroid/widget/TextView;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/activity Landroid/app/Activity;
getstatic com/android/u/weibo/R$id/top_at_me_line I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/topAtBottomLine Landroid/view/View;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/activity Landroid/app/Activity;
getstatic com/android/u/weibo/R$id/top_comment_line I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/topCommentBottomLine Landroid/view/View;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/activity Landroid/app/Activity;
getstatic com/android/u/weibo/R$id/top_like_line I
invokevirtual android/app/Activity/findViewById(I)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/topLikeBottomLine Landroid/view/View;
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
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopAt Landroid/widget/TextView;
getstatic com/android/u/weibo/R$drawable/xy_btn_at_press I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopComment Landroid/widget/TextView;
getstatic com/android/u/weibo/R$drawable/xy_btn_comment_normal I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopLike Landroid/widget/TextView;
getstatic com/android/u/weibo/R$drawable/xy_btn_like_normal I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopAt Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/activity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/xy_press_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopComment Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/activity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/xy_content_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopLike Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/activity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/xy_content_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/topAtBottomLine Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/topCommentBottomLine Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/topLikeBottomLine Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopAt Landroid/widget/TextView;
getstatic com/android/u/weibo/R$drawable/xy_btn_at_normal I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopComment Landroid/widget/TextView;
getstatic com/android/u/weibo/R$drawable/xy_btn_comment_press I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopLike Landroid/widget/TextView;
getstatic com/android/u/weibo/R$drawable/xy_btn_like_normal I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopAt Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/activity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/xy_content_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopComment Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/activity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/xy_press_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopLike Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/activity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/xy_content_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/topAtBottomLine Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/topCommentBottomLine Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/topLikeBottomLine Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
return
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopAt Landroid/widget/TextView;
getstatic com/android/u/weibo/R$drawable/xy_btn_at_normal I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopComment Landroid/widget/TextView;
getstatic com/android/u/weibo/R$drawable/xy_btn_comment_normal I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopLike Landroid/widget/TextView;
getstatic com/android/u/weibo/R$drawable/xy_btn_like_press I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopAt Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/activity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/xy_content_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopComment Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/activity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/xy_content_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/tvTopLike Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/activity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/xy_press_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/topAtBottomLine Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/topCommentBottomLine Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/msg/XYMessageTopView/topLikeBottomLine Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 2
.limit stack 5
.end method
