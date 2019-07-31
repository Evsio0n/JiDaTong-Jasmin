.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic$1
.super java/lang/Object
.implements com/common/android/utils/download/progress_updownload/IProgressListener
.enclosing method com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic
.inner class static GetDefaultPic inner com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic outer com/nd/android/u/cloud/activity/welcome/WelcomeActivity
.inner class inner com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic;

.method <init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic$1/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onFail(Ljava/lang/String;)V
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
iconst_0
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/setIsDownloadPicComplete(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public onProgress(JJ)V
return
.limit locals 5
.limit stack 0
.end method

.method public onStart()V
return
.limit locals 1
.limit stack 0
.end method

.method public onSuccess(Ljava/lang/String;)V
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
iconst_1
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/setIsDownloadPicComplete(Z)V
return
.limit locals 2
.limit stack 2
.end method
