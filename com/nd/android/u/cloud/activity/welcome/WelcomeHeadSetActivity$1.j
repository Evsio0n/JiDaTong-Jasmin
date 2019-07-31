.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity
.inner class inner com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$1/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
tableswitch 2131624489
L0
L1
default : L2
L2:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$1/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity;
invokestatic com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/access$000(Lcom/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity;)Lcom/android/u/weibo/cropimage/business/PortraitModify;
invokevirtual com/android/u/weibo/cropimage/business/PortraitModify/openPhotoLibraryMenu()V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity$1/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity;
invokestatic com/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity/access$000(Lcom/nd/android/u/cloud/activity/welcome/WelcomeHeadSetActivity;)Lcom/android/u/weibo/cropimage/business/PortraitModify;
invokevirtual com/android/u/weibo/cropimage/business/PortraitModify/openImageCaptureMenu()V
return
.limit locals 2
.limit stack 1
.end method
