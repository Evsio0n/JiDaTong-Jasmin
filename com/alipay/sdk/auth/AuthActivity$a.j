.bytecode 50.0
.class final synchronized com/alipay/sdk/auth/AuthActivity$a
.super android/webkit/WebChromeClient
.inner class private final a inner com/alipay/sdk/auth/AuthActivity$a outer com/alipay/sdk/auth/AuthActivity

.field final synthetic 'a' Lcom/alipay/sdk/auth/AuthActivity;

.method private <init>(Lcom/alipay/sdk/auth/AuthActivity;)V
aload 0
aload 1
putfield com/alipay/sdk/auth/AuthActivity$a/a Lcom/alipay/sdk/auth/AuthActivity;
aload 0
invokespecial android/webkit/WebChromeClient/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/alipay/sdk/auth/AuthActivity;B)V
aload 0
aload 1
invokespecial com/alipay/sdk/auth/AuthActivity$a/<init>(Lcom/alipay/sdk/auth/AuthActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
aload 1
invokevirtual android/webkit/ConsoleMessage/message()Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
aload 1
invokespecial android/webkit/WebChromeClient/onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
ireturn
L0:
aconst_null
astore 2
aload 3
ldc "h5container.message: "
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L1
aload 3
ldc "h5container.message: "
ldc ""
invokevirtual java/lang/String/replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 2
L1:
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
aload 1
invokespecial android/webkit/WebChromeClient/onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
ireturn
L2:
aload 0
getfield com/alipay/sdk/auth/AuthActivity$a/a Lcom/alipay/sdk/auth/AuthActivity;
aload 2
invokestatic com/alipay/sdk/auth/AuthActivity/b(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial android/webkit/WebChromeClient/onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
ireturn
.limit locals 4
.limit stack 3
.end method
