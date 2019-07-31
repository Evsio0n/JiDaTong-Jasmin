.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3/run()V
.inner class inner com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3
.inner class inner com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3$1

.field final synthetic 'this$1' Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3;

.method <init>(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3$1/this$1 Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3$1/this$1 Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3;
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3/this$0 Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;
invokestatic com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/access$400(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)I
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3$1/this$1 Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3;
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$3/this$0 Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;
invokestatic com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/access$800(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)I
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/updateReceiveGroupMsg(II)V 2
return
.limit locals 1
.limit stack 3
.end method
