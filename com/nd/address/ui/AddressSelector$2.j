.bytecode 50.0
.class synchronized com/nd/address/ui/AddressSelector$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/address/ui/AddressSelector/initEvent()V
.inner class inner com/nd/address/ui/AddressSelector$2

.field final synthetic 'this$0' Lcom/nd/address/ui/AddressSelector;

.method <init>(Lcom/nd/address/ui/AddressSelector;)V
aload 0
aload 1
putfield com/nd/address/ui/AddressSelector$2/this$0 Lcom/nd/address/ui/AddressSelector;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 0
getfield com/nd/address/ui/AddressSelector$2/this$0 Lcom/nd/address/ui/AddressSelector;
invokestatic com/nd/address/ui/AddressSelector/access$3(Lcom/nd/address/ui/AddressSelector;)Ljava/lang/String;
ifnonnull L0
aload 0
getfield com/nd/address/ui/AddressSelector$2/this$0 Lcom/nd/address/ui/AddressSelector;
invokestatic com/nd/address/ui/AddressSelector/access$7(Lcom/nd/address/ui/AddressSelector;)Ljava/lang/String;
ifnonnull L1
iconst_1
istore 2
L2:
aload 1
ldc "hasChange"
iload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 1
ldc "oldCode"
aload 0
getfield com/nd/address/ui/AddressSelector$2/this$0 Lcom/nd/address/ui/AddressSelector;
invokestatic com/nd/address/ui/AddressSelector/access$7(Lcom/nd/address/ui/AddressSelector;)Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "newCode"
aload 0
getfield com/nd/address/ui/AddressSelector$2/this$0 Lcom/nd/address/ui/AddressSelector;
invokestatic com/nd/address/ui/AddressSelector/access$3(Lcom/nd/address/ui/AddressSelector;)Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "newName"
getstatic com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle/INSTANCE Lcom/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle;
aload 0
getfield com/nd/address/ui/AddressSelector$2/this$0 Lcom/nd/address/ui/AddressSelector;
invokestatic com/nd/address/ui/AddressSelector/access$3(Lcom/nd/address/ui/AddressSelector;)Ljava/lang/String;
iconst_1
invokevirtual com/nd/rj/common/administrativeregions/lib/AdministrativeRegionsHandle/getFullName(Ljava/lang/String;Z)Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/address/ui/AddressSelector$2/this$0 Lcom/nd/address/ui/AddressSelector;
iconst_m1
aload 1
invokevirtual com/nd/address/ui/AddressSelector/setResult(ILandroid/content/Intent;)V
aload 0
getfield com/nd/address/ui/AddressSelector$2/this$0 Lcom/nd/address/ui/AddressSelector;
invokevirtual com/nd/address/ui/AddressSelector/finish()V
return
L1:
iconst_0
istore 2
goto L2
L0:
aload 0
getfield com/nd/address/ui/AddressSelector$2/this$0 Lcom/nd/address/ui/AddressSelector;
invokestatic com/nd/address/ui/AddressSelector/access$7(Lcom/nd/address/ui/AddressSelector;)Ljava/lang/String;
ifnonnull L3
iconst_0
istore 2
goto L2
L3:
aload 0
getfield com/nd/address/ui/AddressSelector$2/this$0 Lcom/nd/address/ui/AddressSelector;
invokestatic com/nd/address/ui/AddressSelector/access$3(Lcom/nd/address/ui/AddressSelector;)Ljava/lang/String;
aload 0
getfield com/nd/address/ui/AddressSelector$2/this$0 Lcom/nd/address/ui/AddressSelector;
invokestatic com/nd/address/ui/AddressSelector/access$7(Lcom/nd/address/ui/AddressSelector;)Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
istore 2
goto L2
.limit locals 3
.limit stack 5
.end method
