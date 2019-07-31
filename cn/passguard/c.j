.bytecode 50.0
.class final synchronized cn/passguard/C
.super java/lang/Object
.implements java/lang/Runnable

.field private synthetic 'a' Lcn/passguard/B;

.field private final synthetic 'b' Ljava/lang/String;

.method <init>(Lcn/passguard/B;Ljava/lang/String;)V
aload 0
aload 1
putfield cn/passguard/C/a Lcn/passguard/B;
aload 0
aload 2
putfield cn/passguard/C/b Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public final run()V
aload 0
getfield cn/passguard/C/a Lcn/passguard/B;
invokestatic cn/passguard/B/a(Lcn/passguard/B;)Lcn/passguard/PassGuardManager;
invokestatic cn/passguard/PassGuardManager/a(Lcn/passguard/PassGuardManager;)Landroid/webkit/WebView;
new java/lang/StringBuilder
dup
ldc "javascript:var edittext = document.getElementById('"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield cn/passguard/C/b Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "');var keyboardheight = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield cn/passguard/C/a Lcn/passguard/B;
invokestatic cn/passguard/B/a(Lcn/passguard/B;)Lcn/passguard/PassGuardManager;
invokestatic cn/passguard/PassGuardManager/b(Lcn/passguard/PassGuardManager;)Lcn/passguard/PassGuardEdit;
invokevirtual cn/passguard/PassGuardEdit/getHeight()I
i2f
aload 0
getfield cn/passguard/C/a Lcn/passguard/B;
invokestatic cn/passguard/B/a(Lcn/passguard/B;)Lcn/passguard/PassGuardManager;
invokestatic cn/passguard/PassGuardManager/a(Lcn/passguard/PassGuardManager;)Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/getScale()F
fdiv
invokevirtual java/lang/StringBuilder/append(F)Ljava/lang/StringBuilder;
ldc ";var clientHeight;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "if ( document.compatMode == 'CSS1Compat' ) {clientHeight = document.documentElement.clientHeight;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "} else {clientHeight = document.body.clientHeight;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "}var actualTop = edittext.offsetTop; var current = edittext.offsetParent; while (current !== null){actualTop += current.offsetTop; current = current.offsetParent;};"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "var screenbottom = clientHeight - actualTop + document.body.scrollTop - edittext.clientHeight;var keyboard = document.createElement('div');"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "keyboard.style.height = keyboardheight + 'px';keyboard.id = 'keyboard';"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "document.body.appendChild(keyboard);if (screenbottom < keyboardheight) {"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "document.body.scrollTop = actualTop + edittext.clientHeight - clientHeight + keyboardheight;}"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
aload 0
getfield cn/passguard/C/a Lcn/passguard/B;
invokestatic cn/passguard/B/a(Lcn/passguard/B;)Lcn/passguard/PassGuardManager;
invokestatic cn/passguard/PassGuardManager/a(Lcn/passguard/PassGuardManager;)Landroid/webkit/WebView;
new java/lang/StringBuilder
dup
ldc "javascript:doShowAction(\""
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield cn/passguard/C/b Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 4
.end method
