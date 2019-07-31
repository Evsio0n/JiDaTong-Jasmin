.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/SettingActivity
.super com/product/android/ui/activity/HeaderActivity

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903709
invokevirtual com/nd/android/u/cloud/activity/SettingActivity/setContentView(I)V
aload 0
invokestatic com/common/android/utils/StackManager/putFragmentActivity(Landroid/support/v4/app/FragmentActivity;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SettingActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/SettingActivity/initEvent()V
aload 0
ldc_w 2131495048
invokevirtual com/nd/android/u/cloud/activity/SettingActivity/setActivityTitle(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
aload 0
invokestatic com/common/android/utils/StackManager/pullFragmentActivity(Landroid/support/v4/app/FragmentActivity;)V
return
.limit locals 1
.limit stack 1
.end method
