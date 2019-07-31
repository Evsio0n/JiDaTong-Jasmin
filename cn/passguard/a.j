.bytecode 50.0
.class final synchronized cn/passguard/A
.super java/lang/Object
.implements java/lang/Runnable

.field private synthetic 'a' Lcn/passguard/z;

.field private final synthetic 'b' Ljava/lang/String;

.method <init>(Lcn/passguard/z;Ljava/lang/String;)V
aload 0
aload 1
putfield cn/passguard/A/a Lcn/passguard/z;
aload 0
aload 2
putfield cn/passguard/A/b Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public final run()V
aload 0
getfield cn/passguard/A/a Lcn/passguard/z;
invokestatic cn/passguard/z/a(Lcn/passguard/z;)Lcn/passguard/PassGuardManager;
invokestatic cn/passguard/PassGuardManager/a(Lcn/passguard/PassGuardManager;)Landroid/webkit/WebView;
ldc "javascript:var keyboard = document.getElementById('keyboard');document.body.removeChild(keyboard);"
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
aload 0
getfield cn/passguard/A/a Lcn/passguard/z;
invokestatic cn/passguard/z/a(Lcn/passguard/z;)Lcn/passguard/PassGuardManager;
invokestatic cn/passguard/PassGuardManager/a(Lcn/passguard/PassGuardManager;)Landroid/webkit/WebView;
new java/lang/StringBuilder
dup
ldc "javascript:doHideAction(\""
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield cn/passguard/A/b Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 4
.end method
