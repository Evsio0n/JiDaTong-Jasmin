.bytecode 50.0
.class synchronized com/nd/rj/common/login/jobnumber/InputWidget$1
.super java/lang/Object
.implements android/text/TextWatcher
.enclosing method com/nd/rj/common/login/jobnumber/InputWidget/initView(Landroid/content/Context;)V
.inner class inner com/nd/rj/common/login/jobnumber/InputWidget$1

.field final synthetic 'this$0' Lcom/nd/rj/common/login/jobnumber/InputWidget;

.field final synthetic 'val$cleanInput' Landroid/view/View;

.method <init>(Lcom/nd/rj/common/login/jobnumber/InputWidget;Landroid/view/View;)V
aload 0
aload 1
putfield com/nd/rj/common/login/jobnumber/InputWidget$1/this$0 Lcom/nd/rj/common/login/jobnumber/InputWidget;
aload 0
aload 2
putfield com/nd/rj/common/login/jobnumber/InputWidget$1/val$cleanInput Landroid/view/View;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_4
istore 2
L1:
aload 0
getfield com/nd/rj/common/login/jobnumber/InputWidget$1/val$cleanInput Landroid/view/View;
iload 2
invokevirtual android/view/View/setVisibility(I)V
return
L0:
iconst_0
istore 2
goto L1
.limit locals 3
.limit stack 2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method
