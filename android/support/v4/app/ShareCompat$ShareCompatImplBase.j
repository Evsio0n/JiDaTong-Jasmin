.bytecode 50.0
.class synchronized android/support/v4/app/ShareCompat$ShareCompatImplBase
.super java/lang/Object
.implements android/support/v4/app/ShareCompat$ShareCompatImpl
.inner class static ShareCompatImplBase inner android/support/v4/app/ShareCompat$ShareCompatImplBase outer android/support/v4/app/ShareCompat

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
L0:
iload 2
iload 3
if_icmpge L1
aload 1
iload 2
invokeinterface java/lang/CharSequence/charAt(I)C 1
istore 4
iload 4
bipush 60
if_icmpne L2
aload 0
ldc "&lt;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L3:
iload 2
iconst_1
iadd
istore 2
goto L0
L2:
iload 4
bipush 62
if_icmpne L4
aload 0
ldc "&gt;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L3
L4:
iload 4
bipush 38
if_icmpne L5
aload 0
ldc "&amp;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L3
L5:
iload 4
bipush 126
if_icmpgt L6
iload 4
bipush 32
if_icmpge L7
L6:
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&#"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L3
L7:
iload 4
bipush 32
if_icmpne L8
L9:
iload 2
iconst_1
iadd
iload 3
if_icmpge L10
aload 1
iload 2
iconst_1
iadd
invokeinterface java/lang/CharSequence/charAt(I)C 1
bipush 32
if_icmpne L10
aload 0
ldc "&nbsp;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 2
iconst_1
iadd
istore 2
goto L9
L10:
aload 0
bipush 32
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
goto L3
L8:
aload 0
iload 4
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
goto L3
L1:
return
.limit locals 5
.limit stack 3
.end method

.method public configureMenuItem(Landroid/view/MenuItem;Landroid/support/v4/app/ShareCompat$IntentBuilder;)V
aload 1
aload 2
invokevirtual android/support/v4/app/ShareCompat$IntentBuilder/createChooserIntent()Landroid/content/Intent;
invokeinterface android/view/MenuItem/setIntent(Landroid/content/Intent;)Landroid/view/MenuItem; 1
pop
return
.limit locals 3
.limit stack 2
.end method

.method public escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
aload 1
iconst_0
aload 1
invokeinterface java/lang/CharSequence/length()I 0
invokestatic android/support/v4/app/ShareCompat$ShareCompatImplBase/withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 4
.end method
