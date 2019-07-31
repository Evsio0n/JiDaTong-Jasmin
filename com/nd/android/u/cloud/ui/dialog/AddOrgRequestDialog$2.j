.bytecode 50.0
.class synchronized com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$2
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/setListener()V
.inner class inner com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;

.method <init>(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$2/this$0 Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSuperclass()Ljava/lang/Class;
ldc "mShowing"
invokevirtual java/lang/Class/getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
astore 3
aload 3
iconst_1
invokevirtual java/lang/reflect/Field/setAccessible(Z)V
aload 3
aload 1
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual java/lang/reflect/Field/set(Ljava/lang/Object;Ljava/lang/Object;)V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
L1:
return
L2:
astore 1
return
.limit locals 4
.limit stack 3
.end method
