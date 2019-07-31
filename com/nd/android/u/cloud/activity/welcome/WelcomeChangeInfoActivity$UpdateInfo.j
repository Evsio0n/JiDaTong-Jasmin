.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity$UpdateInfo
.super com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo
.inner class UpdateInfo inner com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity$UpdateInfo outer com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity;

.method public <init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity;Landroid/app/Activity;Z)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity$UpdateInfo/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity;
aload 0
aload 2
iload 3
invokespecial com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo/<init>(Landroid/app/Activity;Z)V
return
.limit locals 4
.limit stack 3
.end method

.method public success()V
aload 0
invokespecial com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo/success()V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity$UpdateInfo/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity;
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeChangeInfoActivity/finish()V
return
.limit locals 1
.limit stack 1
.end method
