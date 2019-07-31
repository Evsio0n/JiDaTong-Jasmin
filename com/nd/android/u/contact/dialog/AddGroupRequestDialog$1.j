.bytecode 50.0
.class synchronized com/nd/android/u/contact/dialog/AddGroupRequestDialog$1
.super java/lang/Object
.implements com/nd/android/u/contact/cache/ProfileUserCacheCallback
.enclosing method com/nd/android/u/contact/dialog/AddGroupRequestDialog/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapGroup;)V
.inner class inner com/nd/android/u/contact/dialog/AddGroupRequestDialog$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;

.field final synthetic 'val$group' Lcom/product/android/commonInterface/contact/OapGroup;

.method <init>(Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;Lcom/product/android/commonInterface/contact/OapGroup;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/AddGroupRequestDialog$1/this$0 Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;
aload 0
aload 2
putfield com/nd/android/u/contact/dialog/AddGroupRequestDialog$1/val$group Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public refresh(Lcom/product/android/commonInterface/contact/OapUser;)V
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog$1/this$0 Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;
invokestatic com/nd/android/u/contact/dialog/AddGroupRequestDialog/access$000(Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;)Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog$1/val$group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getCreatorid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 2
.limit stack 4
.end method
