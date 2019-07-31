.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ui/activity/background_setting/CommonSettingActivity
.inner class inner com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3
.inner class inner com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;

.method <init>(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3/this$0 Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
new java/lang/Thread
dup
new com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3$1/<init>(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
.limit locals 1
.limit stack 5
.end method
