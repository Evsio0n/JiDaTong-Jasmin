.bytecode 50.0
.class public synchronized com/nd/teamfile/activity/HeaderActivity
.super android/app/Activity
.inner class inner com/nd/teamfile/activity/HeaderActivity$1

.field protected 'leftBtn' Landroid/widget/Button;

.field private 'onclick' Landroid/view/View$OnClickListener;

.field protected 'rightBtn' Landroid/widget/Button;

.field protected 'rightLy' Landroid/widget/LinearLayout;

.field protected 'titleText' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
new com/nd/teamfile/activity/HeaderActivity$1
dup
aload 0
invokespecial com/nd/teamfile/activity/HeaderActivity$1/<init>(Lcom/nd/teamfile/activity/HeaderActivity;)V
putfield com/nd/teamfile/activity/HeaderActivity/onclick Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method protected initComponent()V
aload 0
aload 0
getstatic com/nd/teamfile/R$id/header_btn_left I
invokevirtual com/nd/teamfile/activity/HeaderActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/teamfile/activity/HeaderActivity/leftBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/teamfile/R$id/header_btn_right I
invokevirtual com/nd/teamfile/activity/HeaderActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/teamfile/activity/HeaderActivity/rightBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/teamfile/R$id/header_text_title I
invokevirtual com/nd/teamfile/activity/HeaderActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/teamfile/activity/HeaderActivity/titleText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/teamfile/R$id/header_layout_right I
invokevirtual com/nd/teamfile/activity/HeaderActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/teamfile/activity/HeaderActivity/rightLy Landroid/widget/LinearLayout;
return
.limit locals 1
.limit stack 3
.end method

.method protected initEvent()V
aload 0
getfield com/nd/teamfile/activity/HeaderActivity/leftBtn Landroid/widget/Button;
aload 0
getfield com/nd/teamfile/activity/HeaderActivity/onclick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/teamfile/activity/HeaderActivity/rightBtn Landroid/widget/Button;
aload 0
getfield com/nd/teamfile/activity/HeaderActivity/onclick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected leftBtnHandle()V
aload 0
invokevirtual com/nd/teamfile/activity/HeaderActivity/finish()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokevirtual com/nd/teamfile/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method protected onStart()V
aload 0
invokespecial android/app/Activity/onStart()V
return
.limit locals 1
.limit stack 1
.end method

.method protected rightBtnHandle()V
return
.limit locals 1
.limit stack 0
.end method

.method protected setActivityTitle(I)V
aload 0
getfield com/nd/teamfile/activity/HeaderActivity/titleText Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setActivityTitle(Ljava/lang/String;)V
aload 0
getfield com/nd/teamfile/activity/HeaderActivity/titleText Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method
