.bytecode 50.0
.class synchronized com/nd/rj/common/login/jobnumber/InputWidget$2
.super java/lang/Object
.implements com/nd/rj/common/login/view/NdUserPopup$IUserOper
.enclosing method com/nd/rj/common/login/jobnumber/InputWidget/onClickDropDown()V
.inner class inner com/nd/rj/common/login/jobnumber/InputWidget$2

.field final synthetic 'this$0' Lcom/nd/rj/common/login/jobnumber/InputWidget;

.method <init>(Lcom/nd/rj/common/login/jobnumber/InputWidget;)V
aload 0
aload 1
putfield com/nd/rj/common/login/jobnumber/InputWidget$2/this$0 Lcom/nd/rj/common/login/jobnumber/InputWidget;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onSelectUser(Ljava/lang/String;)V
aload 1
ifnonnull L0
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget$2/this$0 Lcom/nd/rj/common/login/jobnumber/InputWidget;
invokestatic com/nd/rj/common/login/jobnumber/InputWidget/access$000(Lcom/nd/rj/common/login/jobnumber/InputWidget;)Lcom/nd/rj/common/login/jobnumber/InputWidget$InputWidgetInteract;
iconst_1
invokeinterface com/nd/rj/common/login/jobnumber/InputWidget$InputWidgetInteract/onCleanAllWidget(Z)V 1
L1:
return
L0:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget$2/this$0 Lcom/nd/rj/common/login/jobnumber/InputWidget;
invokestatic com/nd/rj/common/login/jobnumber/InputWidget/access$000(Lcom/nd/rj/common/login/jobnumber/InputWidget;)Lcom/nd/rj/common/login/jobnumber/InputWidget$InputWidgetInteract;
aload 1
invokeinterface com/nd/rj/common/login/jobnumber/InputWidget$InputWidgetInteract/setAccountWidget(Ljava/lang/String;)V 1
ldc ""
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
ldc ""
astore 1
L3:
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget$2/this$0 Lcom/nd/rj/common/login/jobnumber/InputWidget;
invokestatic com/nd/rj/common/login/jobnumber/InputWidget/access$000(Lcom/nd/rj/common/login/jobnumber/InputWidget;)Lcom/nd/rj/common/login/jobnumber/InputWidget$InputWidgetInteract;
aload 1
invokeinterface com/nd/rj/common/login/jobnumber/InputWidget$InputWidgetInteract/setPasswordWidget(Ljava/lang/String;)V 1
return
L2:
invokestatic com/nd/rj/common/login/jobnumber/HeartPasswordTransformationMethod/getDefaultShowPassword()Ljava/lang/String;
astore 1
goto L3
.limit locals 2
.limit stack 2
.end method
