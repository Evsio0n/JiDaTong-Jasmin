.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1
.super java/lang/Object
.implements android/widget/CompoundButton$OnCheckedChangeListener
.enclosing method com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/initEvent()V
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1$1
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1$2

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifne L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/fail_network_error I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/access$000(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Landroid/widget/ToggleButton;
iconst_0
invokevirtual android/widget/ToggleButton/setChecked(Z)V
return
L0:
iload 2
ifeq L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
new com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1$1
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1$1/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1;)V
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
new com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1$2
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1$2/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1;)V
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 3
.limit stack 4
.end method
