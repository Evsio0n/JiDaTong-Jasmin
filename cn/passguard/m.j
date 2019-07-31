.bytecode 50.0
.class final synchronized cn/passguard/m
.super java/lang/Object
.implements java/lang/Runnable

.field private synthetic 'a' Lcn/passguard/k;

.field private final synthetic 'b' I

.method <init>(Lcn/passguard/k;I)V
aload 0
aload 1
putfield cn/passguard/m/a Lcn/passguard/k;
aload 0
iload 2
putfield cn/passguard/m/b I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public final run()V
ldc ""
astore 2
iconst_0
istore 1
L0:
iload 1
aload 0
getfield cn/passguard/m/b I
if_icmplt L1
aload 0
getfield cn/passguard/m/a Lcn/passguard/k;
getfield cn/passguard/k/c Landroid/webkit/WebView;
new java/lang/StringBuilder
dup
ldc "javascript:addText('"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield cn/passguard/m/a Lcn/passguard/k;
getfield cn/passguard/k/d Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "','"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "')"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
return
L1:
new java/lang/StringBuilder
dup
aload 2
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "*"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 3
.limit stack 4
.end method
