.bytecode 50.0
.class final synchronized com/nd/android/u/cloud/helper/PubFunction$3
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/cloud/helper/PubFunction/ShowSettingNetWork(Landroid/content/Context;)V
.inner class static final inner com/nd/android/u/cloud/helper/PubFunction$3

.field final synthetic 'val$context' Landroid/content/Context;

.method <init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/helper/PubFunction$3/val$context Landroid/content/Context;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 10
if_icmple L0
new android/content/Intent
dup
ldc "android.settings.SETTINGS"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
L1:
aload 0
getfield com/nd/android/u/cloud/helper/PubFunction$3/val$context Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L0:
new android/content/Intent
dup
ldc "/"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
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
goto L1
.limit locals 3
.limit stack 5
.end method
