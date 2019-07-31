.bytecode 50.0
.class final synchronized cn/passguard/x
.super java/lang/Object
.implements cn/passguard/f

.field private synthetic 'a' Lcn/passguard/k;

.method <init>(Lcn/passguard/k;)V
aload 0
aload 1
putfield cn/passguard/x/a Lcn/passguard/k;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final a()Ljava/lang/String;
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokeinterface android/text/Editable/toString()Ljava/lang/String; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public final a(II)V
getstatic cn/passguard/k/b Landroid/widget/EditText;
iload 1
iload 2
invokevirtual android/widget/EditText/setSelection(II)V
return
.limit locals 3
.limit stack 3
.end method

.method public final a(Ljava/lang/String;)V
aload 1
ifnull L0
aload 0
getfield cn/passguard/x/a Lcn/passguard/k;
aload 1
putfield cn/passguard/k/e Ljava/lang/String;
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
astore 4
aload 4
ifnull L1
aload 4
invokeinterface java/lang/CharSequence/length()I 0
ifle L2
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionStart()I
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionEnd()I
if_icmpge L3
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionStart()I
istore 2
L4:
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionStart()I
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionEnd()I
if_icmpge L5
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionEnd()I
istore 3
L6:
getstatic cn/passguard/k/b Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
getstatic cn/passguard/k/b Landroid/widget/EditText;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
iconst_0
iload 2
invokeinterface java/lang/CharSequence/subSequence(II)Ljava/lang/CharSequence; 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
iload 3
aload 4
invokeinterface java/lang/CharSequence/length()I 0
invokeinterface java/lang/CharSequence/subSequence(II)Ljava/lang/CharSequence; 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/EditText/append(Ljava/lang/CharSequence;)V
getstatic cn/passguard/k/b Landroid/widget/EditText;
iload 2
iconst_1
iadd
invokevirtual android/widget/EditText/setSelection(I)V
L1:
aload 4
ifnull L0
aload 0
getfield cn/passguard/x/a Lcn/passguard/k;
invokevirtual cn/passguard/k/a()V
L0:
return
L3:
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionEnd()I
istore 2
goto L4
L5:
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionStart()I
istore 3
goto L6
L2:
getstatic cn/passguard/k/b Landroid/widget/EditText;
aload 1
invokevirtual android/widget/EditText/append(Ljava/lang/CharSequence;)V
goto L1
.limit locals 5
.limit stack 5
.end method

.method public final b()V
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionStart()I
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionEnd()I
if_icmpge L0
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionStart()I
istore 1
L1:
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionStart()I
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionEnd()I
if_icmpge L2
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionEnd()I
istore 2
L3:
iload 1
ifne L4
iload 1
iload 2
if_icmpne L4
L5:
return
L0:
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionEnd()I
istore 1
goto L1
L2:
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionStart()I
istore 2
goto L3
L4:
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
astore 3
aload 3
ifnull L6
aload 3
invokeinterface java/lang/CharSequence/length()I 0
ifle L6
getstatic cn/passguard/k/b Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
iload 1
iload 2
if_icmpeq L7
getstatic cn/passguard/k/b Landroid/widget/EditText;
aload 3
iconst_0
iload 1
invokeinterface java/lang/CharSequence/subSequence(II)Ljava/lang/CharSequence; 2
invokevirtual android/widget/EditText/append(Ljava/lang/CharSequence;)V
getstatic cn/passguard/k/b Landroid/widget/EditText;
aload 3
iload 2
aload 3
invokeinterface java/lang/CharSequence/length()I 0
invokeinterface java/lang/CharSequence/subSequence(II)Ljava/lang/CharSequence; 2
invokevirtual android/widget/EditText/append(Ljava/lang/CharSequence;)V
getstatic cn/passguard/k/b Landroid/widget/EditText;
iload 1
invokevirtual android/widget/EditText/setSelection(I)V
L6:
aload 3
ifnull L5
aload 0
getfield cn/passguard/x/a Lcn/passguard/k;
invokevirtual cn/passguard/k/a()V
return
L7:
getstatic cn/passguard/k/b Landroid/widget/EditText;
aload 3
iconst_0
iload 1
iconst_1
isub
invokeinterface java/lang/CharSequence/subSequence(II)Ljava/lang/CharSequence; 2
invokevirtual android/widget/EditText/append(Ljava/lang/CharSequence;)V
getstatic cn/passguard/k/b Landroid/widget/EditText;
aload 3
iload 2
aload 3
invokeinterface java/lang/CharSequence/length()I 0
invokeinterface java/lang/CharSequence/subSequence(II)Ljava/lang/CharSequence; 2
invokevirtual android/widget/EditText/append(Ljava/lang/CharSequence;)V
getstatic cn/passguard/k/b Landroid/widget/EditText;
iload 1
iconst_1
isub
invokevirtual android/widget/EditText/setSelection(I)V
goto L6
.limit locals 4
.limit stack 5
.end method

.method public final c()V
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionStart()I
istore 1
iload 1
ifle L0
getstatic cn/passguard/k/b Landroid/widget/EditText;
iload 1
iconst_1
isub
invokevirtual android/widget/EditText/setSelection(I)V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public final d()V
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionEnd()I
istore 1
iload 1
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/length()I
if_icmpge L0
getstatic cn/passguard/k/b Landroid/widget/EditText;
iload 1
iconst_1
iadd
invokevirtual android/widget/EditText/setSelection(I)V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public final e()I
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionStart()I
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionEnd()I
if_icmpge L0
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionStart()I
ireturn
L0:
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionEnd()I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public final f()I
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionStart()I
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionEnd()I
if_icmpge L0
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionEnd()I
ireturn
L0:
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionStart()I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public final g()V
getstatic cn/passguard/k/b Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 2
.end method

.method public final h()V
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/length()I
istore 2
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionStart()I
istore 3
getstatic cn/passguard/k/b Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionEnd()I
istore 4
getstatic cn/passguard/k/b Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpne L1
getstatic cn/passguard/k/b Landroid/widget/EditText;
iload 3
iload 4
invokevirtual android/widget/EditText/setSelection(II)V
return
L1:
getstatic cn/passguard/k/b Landroid/widget/EditText;
ldc "*"
invokevirtual android/widget/EditText/append(Ljava/lang/CharSequence;)V
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 5
.limit stack 3
.end method

.method public final i()V
return
.limit locals 1
.limit stack 0
.end method

.method public final j()V
return
.limit locals 1
.limit stack 0
.end method
