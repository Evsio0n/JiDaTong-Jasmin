.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$2
.super java/lang/Object
.implements com/product/android/commonInterface/chat/IGroupReceiveSettingListener
.enclosing method com/nd/android/u/ui/activity/background_setting/CommonSettingActivity
.inner class inner com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;

.method <init>(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$2/this$0 Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public getPermission(I)V
iload 1
tableswitch 0
L0
L1
L2
default : L3
L3:
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$2/this$0 Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;
invokestatic com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/access$400(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)I
iload 1
if_icmpne L4
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$2/this$0 Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;
invokestatic com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/access$400(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)I
iconst_2
if_icmpne L5
L4:
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$2/this$0 Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;
invokestatic com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/access$400(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)I
iload 1
if_icmpeq L6
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$2/this$0 Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;
invokestatic com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/access$400(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)I
ifle L6
iload 1
ifle L6
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$2/this$0 Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;
iconst_3
invokestatic com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/access$802(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;I)I
pop
L7:
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$2/this$0 Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;
iload 1
invokestatic com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/access$402(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;I)I
pop
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$2/this$0 Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;
invokestatic com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/access$900(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)Landroid/widget/TextView;
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$2/this$0 Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;
invokestatic com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/access$400(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)I
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getGroupSetNameByType(I)Ljava/lang/String; 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$2/this$0 Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;
invokestatic com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/access$1000(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$2/this$0 Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/r Ljava/lang/Runnable;
invokevirtual android/os/Handler/removeCallbacks(Ljava/lang/Runnable;)V
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$2/this$0 Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;
invokestatic com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/access$1000(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$2/this$0 Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/r Ljava/lang/Runnable;
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
L5:
return
L0:
iconst_1
istore 1
goto L3
L1:
iconst_2
istore 1
goto L3
L2:
iconst_0
istore 1
goto L3
L6:
aload 0
getfield com/nd/android/u/ui/activity/background_setting/CommonSettingActivity$2/this$0 Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;
iconst_0
invokestatic com/nd/android/u/ui/activity/background_setting/CommonSettingActivity/access$802(Lcom/nd/android/u/ui/activity/background_setting/CommonSettingActivity;I)I
pop
goto L7
.limit locals 2
.limit stack 3
.end method
