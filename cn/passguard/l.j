.bytecode 50.0
.class final synchronized cn/passguard/l
.super java/lang/Object
.implements java/lang/Runnable

.field private synthetic 'a' Lcn/passguard/k;

.method <init>(Lcn/passguard/k;)V
aload 0
aload 1
putfield cn/passguard/l/a Lcn/passguard/k;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final run()V
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
astore 1
aload 0
getfield cn/passguard/l/a Lcn/passguard/k;
getfield cn/passguard/k/c Landroid/webkit/WebView;
new java/lang/StringBuilder
dup
ldc "javascript:addText('"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield cn/passguard/l/a Lcn/passguard/k;
getfield cn/passguard/k/d Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "','"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "')"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 4
.end method
