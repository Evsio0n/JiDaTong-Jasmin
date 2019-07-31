.bytecode 50.0
.class final synchronized com/nd/rj/common/login/LoginInterfaceManager$1
.super java/lang/Object
.implements com/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener
.enclosing method com/nd/rj/common/login/LoginInterfaceManager/accountAndJobLogin(Landroid/content/Context;Lcom/nd/rj/common/login/entity/LoginParam;ZLcom/nd/rj/common/login/interfaces/LoginProcessListner;)Ljava/lang/String;
.inner class static final inner com/nd/rj/common/login/LoginInterfaceManager$1

.field final synthetic 'val$listner' Lcom/nd/rj/common/login/interfaces/LoginProcessListner;

.method <init>(Lcom/nd/rj/common/login/interfaces/LoginProcessListner;)V
aload 0
aload 1
putfield com/nd/rj/common/login/LoginInterfaceManager$1/val$listner Lcom/nd/rj/common/login/interfaces/LoginProcessListner;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onGetCheckcodeFinish(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/rj/common/login/LoginInterfaceManager$1/val$listner Lcom/nd/rj/common/login/interfaces/LoginProcessListner;
ifnull L0
aload 0
getfield com/nd/rj/common/login/LoginInterfaceManager$1/val$listner Lcom/nd/rj/common/login/interfaces/LoginProcessListner;
aload 1
invokeinterface com/nd/rj/common/login/interfaces/LoginProcessListner/onCheckCode(Landroid/graphics/drawable/Drawable;)V 1
L0:
return
.limit locals 2
.limit stack 2
.end method
