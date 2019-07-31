.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity
.super android/support/v4/app/FragmentActivity
.implements android/view/View$OnClickListener

.field private 'btnBack' Landroid/widget/Button;

.field private 'btnRight' Landroid/widget/Button;

.field private 'rlHeaderBar' Landroid/widget/RelativeLayout;

.field private 'tvTitle' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private initEvent()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/btnBack Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/btnRight Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected handleBackButtonClick()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/finish()V
return
.limit locals 1
.limit stack 1
.end method

.method protected handleRightButtonClick()V
return
.limit locals 1
.limit stack 0
.end method

.method protected initHeadComponent(I)V
aload 0
iload 1
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/findViewById(I)Landroid/view/View;
checkcast android/view/ViewStub
astore 2
aload 2
getstatic com/android/u/weibo/R$layout/tweet_header I
invokevirtual android/view/ViewStub/setLayoutResource(I)V
aload 2
invokevirtual android/view/ViewStub/inflate()Landroid/view/View;
pop
aload 0
aload 0
getstatic com/android/u/weibo/R$id/rl_header_bar I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/rlHeaderBar Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/back I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/btnBack Landroid/widget/Button;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/right_btn I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/btnRight Landroid/widget/Button;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/actionbar_title I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/tvTitle Landroid/widget/TextView;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/rlHeaderBar Landroid/widget/RelativeLayout;
getstatic com/android/u/weibo/R$drawable/xy_bg_header I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/btnBack Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/xy_btn_header_back_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/tvTitle Landroid/widget/TextView;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/xy_title_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
L1:
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/initEvent()V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/rlHeaderBar Landroid/widget/RelativeLayout;
getstatic com/android/u/weibo/R$drawable/header_bg I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/btnBack Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/bt_header_return_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/btnRight Landroid/widget/Button;
getstatic com/android/u/weibo/R$drawable/bt_header_right_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
goto L1
.limit locals 3
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
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/handleBackButtonClick()V
L1:
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/right_btn I
if_icmpne L1
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/handleRightButtonClick()V
return
.limit locals 3
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentActivity/onCreate(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setHeadTitle(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/tvTitle Landroid/widget/TextView;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected setHeadTitle(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/tvTitle Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setRightButtonBackground(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/btnRight Landroid/widget/Button;
iload 1
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setRightButtonText(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/btnRight Landroid/widget/Button;
iload 1
invokevirtual android/widget/Button/setText(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setRightButtonVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/btnRight Landroid/widget/Button;
iload 1
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method
