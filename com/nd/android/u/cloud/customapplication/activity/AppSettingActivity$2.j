.bytecode 50.0
.class synchronized com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/switchRemindOption(Z)V
.inner class inner com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;

.field final synthetic 'val$isCheck' Z

.method <init>(Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;Z)V
aload 0
aload 1
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$2/this$0 Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;
aload 0
iload 2
putfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$2/val$isCheck Z
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$2/this$0 Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$2/this$0 Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;
invokestatic com/nd/android/u/cloud/customapplication/activity/AppSettingActivity/access$200(Lcom/nd/android/u/cloud/customapplication/activity/AppSettingActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/customapplication/activity/AppSettingActivity$2/val$isCheck Z
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveBooleanKey(Ljava/lang/String;Z)V
return
.limit locals 1
.limit stack 3
.end method
