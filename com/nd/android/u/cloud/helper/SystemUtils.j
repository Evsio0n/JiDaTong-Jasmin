.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/helper/SystemUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static callPhone(Ljava/lang/String;Landroid/content/Context;)V
aload 1
ifnull L0
aload 0
ifnull L0
ldc ""
aload 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
return
L1:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
ldc "android.intent.action.CALL"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "tel:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokevirtual android/content/Intent/setData(Landroid/net/Uri;)Landroid/content/Intent;
pop
aload 1
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 3
.end method

.method public static sendEmail(Ljava/lang/String;Landroid/content/Context;)V
aload 1
ifnull L0
aload 0
ifnull L0
ldc ""
aload 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
return
L1:
new android/content/Intent
dup
ldc "android.intent.action.SEND"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 2
aload 2
ldc "plain/text"
invokevirtual android/content/Intent/setType(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "android.intent.extra.EMAIL"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 0
aastore
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
aload 2
ldc "Select email application."
invokestatic android/content/Intent/createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 6
.end method
