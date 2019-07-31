.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$1
.super java/lang/Object
.implements com/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener
.enclosing method com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/_onCreate(Landroid/os/Bundle;)Z
.inner class inner com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onGetCheckcodeFinish(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/mCaptcha Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;
aload 1
invokevirtual com/nd/rj/common/login/jobnumber/CaptchaWidget/showCaptcha(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 2
.end method
