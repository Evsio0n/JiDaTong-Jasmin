.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/AppMarketActivity
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
ldc_w 2130903162
invokevirtual com/nd/android/u/cloud/activity/AppMarketActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/AppMarketActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/AppMarketActivity/initEvent()V
aload 0
ldc_w 2131492988
invokevirtual com/nd/android/u/cloud/activity/AppMarketActivity/setActivityTitle(I)V
return
.limit locals 2
.limit stack 2
.end method
