.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1/onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1$2

.field final synthetic 'this$1' Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1$2/this$1 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1$2/this$1 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1;
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Ljava/lang/String;
iconst_0
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberPermissionManager/saveFixPspGroupSetType(Ljava/lang/String;I)V
return
.limit locals 1
.limit stack 2
.end method
