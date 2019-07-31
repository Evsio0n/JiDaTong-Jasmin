.bytecode 50.0
.class synchronized com/ccb/ccbnetpay/H5PayActivity$1
.super android/os/Handler
.enclosing method com/ccb/ccbnetpay/H5PayActivity
.inner class inner com/ccb/ccbnetpay/H5PayActivity$1

.field final synthetic 'this$0' Lcom/ccb/ccbnetpay/H5PayActivity;

.method <init>(Lcom/ccb/ccbnetpay/H5PayActivity;)V
aload 0
aload 1
putfield com/ccb/ccbnetpay/H5PayActivity$1/this$0 Lcom/ccb/ccbnetpay/H5PayActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 0
L0
L1
default : L2
L2:
return
L0:
ldc "--show finish button--"
new java/lang/StringBuilder
dup
aload 1
getfield android/os/Message/what I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity$1/this$0 Lcom/ccb/ccbnetpay/H5PayActivity;
invokestatic com/ccb/ccbnetpay/H5PayActivity/access$0(Lcom/ccb/ccbnetpay/H5PayActivity;)Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity$1/this$0 Lcom/ccb/ccbnetpay/H5PayActivity;
invokestatic com/ccb/ccbnetpay/H5PayActivity/access$1(Lcom/ccb/ccbnetpay/H5PayActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
L1:
ldc "--hide ProgressDialog--"
new java/lang/StringBuilder
dup
aload 1
getfield android/os/Message/what I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity$1/this$0 Lcom/ccb/ccbnetpay/H5PayActivity;
invokestatic com/ccb/ccbnetpay/H5PayActivity/access$2(Lcom/ccb/ccbnetpay/H5PayActivity;)Lcom/ccb/ccbnetpay/dialog/CCBProgressDialog;
invokevirtual com/ccb/ccbnetpay/dialog/CCBProgressDialog/disDialog()V
return
.limit locals 2
.limit stack 4
.end method
