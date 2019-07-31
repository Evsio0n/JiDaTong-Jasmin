.bytecode 50.0
.class synchronized com/nd/rj/common/login/view/UserAdapter$1$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/rj/common/login/view/UserAdapter$1/onClick(Landroid/view/View;)V
.inner class inner com/nd/rj/common/login/view/UserAdapter$1
.inner class inner com/nd/rj/common/login/view/UserAdapter$1$1

.field final synthetic 'this$1' Lcom/nd/rj/common/login/view/UserAdapter$1;

.field final synthetic 'val$idx' Ljava/lang/Integer;

.field final synthetic 'val$u' Ljava/lang/String;

.method <init>(Lcom/nd/rj/common/login/view/UserAdapter$1;Ljava/lang/String;Ljava/lang/Integer;)V
aload 0
aload 1
putfield com/nd/rj/common/login/view/UserAdapter$1$1/this$1 Lcom/nd/rj/common/login/view/UserAdapter$1;
aload 0
aload 2
putfield com/nd/rj/common/login/view/UserAdapter$1$1/val$u Ljava/lang/String;
aload 0
aload 3
putfield com/nd/rj/common/login/view/UserAdapter$1$1/val$idx Ljava/lang/Integer;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/rj/common/login/view/UserAdapter$1$1/this$1 Lcom/nd/rj/common/login/view/UserAdapter$1;
getfield com/nd/rj/common/login/view/UserAdapter$1/this$0 Lcom/nd/rj/common/login/view/UserAdapter;
invokestatic com/nd/rj/common/login/view/UserAdapter/access$200(Lcom/nd/rj/common/login/view/UserAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/rj/common/login/view/UserAdapter$1$1/val$u Ljava/lang/String;
invokestatic com/nd/rj/common/login/LoginInterfaceManager/delByAccount(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/view/UserAdapter$1$1/this$1 Lcom/nd/rj/common/login/view/UserAdapter$1;
getfield com/nd/rj/common/login/view/UserAdapter$1/this$0 Lcom/nd/rj/common/login/view/UserAdapter;
aload 0
getfield com/nd/rj/common/login/view/UserAdapter$1$1/val$idx Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
invokevirtual com/nd/rj/common/login/view/UserAdapter/removeItem(I)V
aload 0
getfield com/nd/rj/common/login/view/UserAdapter$1$1/this$1 Lcom/nd/rj/common/login/view/UserAdapter$1;
getfield com/nd/rj/common/login/view/UserAdapter$1/this$0 Lcom/nd/rj/common/login/view/UserAdapter;
invokestatic com/nd/rj/common/login/view/UserAdapter/access$300(Lcom/nd/rj/common/login/view/UserAdapter;)Lcom/nd/rj/common/login/view/UserAdapter$IOnOper;
ifnull L0
aload 0
getfield com/nd/rj/common/login/view/UserAdapter$1$1/this$1 Lcom/nd/rj/common/login/view/UserAdapter$1;
getfield com/nd/rj/common/login/view/UserAdapter$1/this$0 Lcom/nd/rj/common/login/view/UserAdapter;
invokestatic com/nd/rj/common/login/view/UserAdapter/access$300(Lcom/nd/rj/common/login/view/UserAdapter;)Lcom/nd/rj/common/login/view/UserAdapter$IOnOper;
invokeinterface com/nd/rj/common/login/view/UserAdapter$IOnOper/onDelete()V 0
L0:
return
.limit locals 3
.limit stack 2
.end method
