.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/MainReceiveFragmentActivity
.super com/product/android/ui/activity/BaseReceiverFragmentActivity

.field public 'manager' Landroid/app/LocalActivityManager;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getLocalManager()Landroid/app/LocalActivityManager;
aload 0
getfield com/nd/android/u/cloud/activity/MainReceiveFragmentActivity/manager Landroid/app/LocalActivityManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
new android/app/LocalActivityManager
dup
aload 0
iconst_1
invokespecial android/app/LocalActivityManager/<init>(Landroid/app/Activity;Z)V
putfield com/nd/android/u/cloud/activity/MainReceiveFragmentActivity/manager Landroid/app/LocalActivityManager;
aload 0
getfield com/nd/android/u/cloud/activity/MainReceiveFragmentActivity/manager Landroid/app/LocalActivityManager;
aload 1
invokevirtual android/app/LocalActivityManager/dispatchCreate(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 5
.end method

.method public onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onDestroy()V
aload 0
getfield com/nd/android/u/cloud/activity/MainReceiveFragmentActivity/manager Landroid/app/LocalActivityManager;
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainReceiveFragmentActivity/isFinishing()Z
invokevirtual android/app/LocalActivityManager/dispatchDestroy(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public onPause()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onPause()V
aload 0
getfield com/nd/android/u/cloud/activity/MainReceiveFragmentActivity/manager Landroid/app/LocalActivityManager;
aload 0
invokevirtual com/nd/android/u/cloud/activity/MainReceiveFragmentActivity/isFinishing()Z
invokevirtual android/app/LocalActivityManager/dispatchPause(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public onResume()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onResume()V
aload 0
getfield com/nd/android/u/cloud/activity/MainReceiveFragmentActivity/manager Landroid/app/LocalActivityManager;
invokevirtual android/app/LocalActivityManager/dispatchResume()V
return
.limit locals 1
.limit stack 1
.end method

.method public onStop()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiverFragmentActivity/onStop()V
aload 0
getfield com/nd/android/u/cloud/activity/MainReceiveFragmentActivity/manager Landroid/app/LocalActivityManager;
invokevirtual android/app/LocalActivityManager/dispatchStop()V
return
.limit locals 1
.limit stack 1
.end method
