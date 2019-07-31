.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/EditSeniorSigntureActivity
.super com/product/android/ui/activity/HeaderActivity

.field private 'mEtSignture' Landroid/widget/EditText;

.field private 'mSignture' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
ldc_w 2131624173
invokevirtual com/nd/android/u/cloud/activity/EditSeniorSigntureActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/EditSeniorSigntureActivity/mEtSignture Landroid/widget/EditText;
aload 0
bipush 8
invokevirtual com/nd/android/u/cloud/activity/EditSeniorSigntureActivity/setRightBtnVisiable(I)V
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
ldc_w 2131495738
invokevirtual com/nd/android/u/cloud/activity/EditSeniorSigntureActivity/setActivityTitle(I)V
aload 0
getfield com/nd/android/u/cloud/activity/EditSeniorSigntureActivity/mSignture Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/EditSeniorSigntureActivity/mEtSignture Landroid/widget/EditText;
aload 0
invokevirtual com/nd/android/u/cloud/activity/EditSeniorSigntureActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131495737
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/EditText/setHint(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/EditSeniorSigntureActivity/mEtSignture Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/EditSeniorSigntureActivity/mSignture Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/EditSeniorSigntureActivity/mEtSignture Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/EditSeniorSigntureActivity/mSignture Ljava/lang/String;
invokevirtual java/lang/String/length()I
invokevirtual android/widget/EditText/setSelection(I)V
return
.limit locals 1
.limit stack 3
.end method

.method protected leftBtnHandle()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/EditSeniorSigntureActivity/hideSoftInput()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "signture"
aload 0
getfield com/nd/android/u/cloud/activity/EditSeniorSigntureActivity/mEtSignture Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
iconst_m1
aload 1
invokevirtual com/nd/android/u/cloud/activity/EditSeniorSigntureActivity/setResult(ILandroid/content/Intent;)V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/leftBtnHandle()V
return
.limit locals 2
.limit stack 3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "HandlerLeak" 
.end annotation
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903067
invokevirtual com/nd/android/u/cloud/activity/EditSeniorSigntureActivity/setContentView(I)V
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/activity/EditSeniorSigntureActivity/getIntent()Landroid/content/Intent;
ldc "signture"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/EditSeniorSigntureActivity/mSignture Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/cloud/activity/EditSeniorSigntureActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/EditSeniorSigntureActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/EditSeniorSigntureActivity/initEvent()V
return
.limit locals 2
.limit stack 3
.end method
