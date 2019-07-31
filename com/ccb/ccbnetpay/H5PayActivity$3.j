.bytecode 50.0
.class synchronized com/ccb/ccbnetpay/H5PayActivity$3
.super android/webkit/WebChromeClient
.enclosing method com/ccb/ccbnetpay/H5PayActivity/initView()V
.inner class inner com/ccb/ccbnetpay/H5PayActivity$3

.field final synthetic 'this$0' Lcom/ccb/ccbnetpay/H5PayActivity;

.method <init>(Lcom/ccb/ccbnetpay/H5PayActivity;)V
aload 0
aload 1
putfield com/ccb/ccbnetpay/H5PayActivity$3/this$0 Lcom/ccb/ccbnetpay/H5PayActivity;
aload 0
invokespecial android/webkit/WebChromeClient/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
ldc "---onProgressChanged---"
new java/lang/StringBuilder
dup
iload 2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush 100
iload 2
if_icmpne L0
aload 0
getfield com/ccb/ccbnetpay/H5PayActivity$3/this$0 Lcom/ccb/ccbnetpay/H5PayActivity;
invokestatic com/ccb/ccbnetpay/H5PayActivity/access$4(Lcom/ccb/ccbnetpay/H5PayActivity;)Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L0:
aload 0
aload 1
iload 2
invokespecial android/webkit/WebChromeClient/onProgressChanged(Landroid/webkit/WebView;I)V
return
.limit locals 3
.limit stack 4
.end method
