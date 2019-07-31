.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/SplashActivity
.super android/app/Activity
.inner class private static final enum NEXT_STEP_UI inner com/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI outer com/nd/android/u/cloud/activity/SplashActivity
.inner class public SleepTask inner com/nd/android/u/cloud/activity/SplashActivity$SleepTask outer com/nd/android/u/cloud/activity/SplashActivity
.inner class inner com/nd/android/u/cloud/activity/SplashActivity$SleepTask$1

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
new com/nd/android/u/cloud/activity/SplashActivity$SleepTask
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SplashActivity$SleepTask/<init>(Lcom/nd/android/u/cloud/activity/SplashActivity;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/SplashActivity$SleepTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 3
.end method
