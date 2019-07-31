.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/guide/AccountSettingActivity$1
.super java/lang/Object
.implements android/text/TextWatcher
.enclosing method com/nd/android/u/cloud/activity/guide/AccountSettingActivity/initEvent()V
.inner class inner com/nd/android/u/cloud/activity/guide/AccountSettingActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
ldc_w 2131624032
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
ldc_w 2131624033
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method
