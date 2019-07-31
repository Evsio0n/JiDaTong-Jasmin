.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/guide/DlgNetworkError$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/activity/guide/DlgNetworkError
.inner class inner com/nd/android/u/cloud/activity/guide/DlgNetworkError$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/guide/DlgNetworkError;

.method <init>(Lcom/nd/android/u/cloud/activity/guide/DlgNetworkError;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/DlgNetworkError$1/this$0 Lcom/nd/android/u/cloud/activity/guide/DlgNetworkError;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
tableswitch 2131624682
L0
L1
default : L2
L2:
return
L0:
getstatic android/os/Build$VERSION/SDK_INT I
bipush 10
if_icmple L3
new android/content/Intent
dup
ldc "android.settings.WIRELESS_SETTINGS"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
L4:
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgNetworkError$1/this$0 Lcom/nd/android/u/cloud/activity/guide/DlgNetworkError;
invokestatic com/nd/android/u/cloud/activity/guide/DlgNetworkError/access$000(Lcom/nd/android/u/cloud/activity/guide/DlgNetworkError;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgNetworkError$1/this$0 Lcom/nd/android/u/cloud/activity/guide/DlgNetworkError;
invokevirtual com/nd/android/u/cloud/activity/guide/DlgNetworkError/dismiss()V
return
L3:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
new android/content/ComponentName
dup
ldc "com.android.settings"
ldc "com.android.settings.WirelessSettings"
invokespecial android/content/ComponentName/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual android/content/Intent/setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
pop
aload 1
ldc "android.intent.action.VIEW"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
goto L4
L1:
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgNetworkError$1/this$0 Lcom/nd/android/u/cloud/activity/guide/DlgNetworkError;
invokevirtual com/nd/android/u/cloud/activity/guide/DlgNetworkError/dismiss()V
return
.limit locals 2
.limit stack 5
.end method
