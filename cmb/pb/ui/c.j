.bytecode 50.0
.class synchronized cmb/pb/ui/c
.super java/lang/Object
.implements android/inputmethodservice/KeyboardView$OnKeyboardActionListener

.field final synthetic 'a' Lcmb/pb/ui/PBKeyboardActivity;

.method <init>(Lcmb/pb/ui/PBKeyboardActivity;)V
aload 0
aload 1
putfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onKey(I[I)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/g(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
astore 2
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/g(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getSelectionStart()I
istore 3
iload 1
bipush -3
if_icmpne L3
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/PBKeyboardActivity;)V
L4:
return
L3:
iload 1
bipush -5
if_icmpne L5
aload 2
ifnull L6
aload 2
invokeinterface android/text/Editable/length()I 0
ifle L6
iload 3
ifle L6
aload 2
iload 3
iconst_1
isub
iload 3
invokeinterface android/text/Editable/delete(II)Landroid/text/Editable; 2
pop
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/h(Lcmb/pb/ui/PBKeyboardActivity;)Z
ifeq L6
invokestatic cmb/pb/ui/PBKeyboardActivity/e()Lcmb/pb/ui/cmbwidget/e;
ifnull L6
invokestatic cmb/pb/ui/PBKeyboardActivity/e()Lcmb/pb/ui/cmbwidget/e;
iload 3
invokevirtual cmb/pb/ui/cmbwidget/e/a(I)V
L6:
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/q(Lcmb/pb/ui/PBKeyboardActivity;)Z
ifeq L4
aload 2
invokeinterface android/text/Editable/toString()Ljava/lang/String; 0
astore 2
invokestatic cmb/pb/ui/PBKeyboardActivity/f()Landroid/os/Handler;
astore 4
aload 4
ifnull L4
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 5
aload 5
iconst_1
putfield android/os/Message/what I
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 6
aload 6
ldc "KeyString"
aload 2
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 5
aload 6
invokevirtual android/os/Message/setData(Landroid/os/Bundle;)V
aload 4
aload 5
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
aload 2
invokevirtual java/lang/String/length()I
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/r(Lcmb/pb/ui/PBKeyboardActivity;)I
if_icmplt L4
getstatic cmb/pb/cmbsafe/b/a Ljava/lang/Boolean;
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L4
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/PBKeyboardActivity;)V
return
L5:
iload 1
iconst_m1
if_icmpne L7
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/b Lcmb/pb/ui/f;
if_acmpne L8
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/j(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/PBKeyboardActivity;Landroid/inputmethodservice/Keyboard;)V
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/j(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
getstatic cmb/pb/ui/f/b Lcmb/pb/ui/f;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/PBKeyboardActivity;Lcmb/pb/ui/f;)V
goto L6
L8:
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/j Lcmb/pb/ui/f;
if_acmpne L9
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/k(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/PBKeyboardActivity;Landroid/inputmethodservice/Keyboard;)V
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/k(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
getstatic cmb/pb/ui/f/j Lcmb/pb/ui/f;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/PBKeyboardActivity;Lcmb/pb/ui/f;)V
goto L6
L9:
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/g Lcmb/pb/ui/f;
if_acmpne L10
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/l(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
getstatic cmb/pb/ui/f/h Lcmb/pb/ui/f;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/PBKeyboardActivity;Lcmb/pb/ui/f;)V
goto L6
L10:
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/h Lcmb/pb/ui/f;
if_acmpne L6
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/m(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
getstatic cmb/pb/ui/f/g Lcmb/pb/ui/f;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/PBKeyboardActivity;Lcmb/pb/ui/f;)V
goto L6
L7:
iload 1
bipush -2
if_icmpne L11
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/b Lcmb/pb/ui/f;
if_acmpne L12
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/m(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
getstatic cmb/pb/ui/f/g Lcmb/pb/ui/f;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/PBKeyboardActivity;Lcmb/pb/ui/f;)V
goto L6
L12:
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/g Lcmb/pb/ui/f;
if_acmpeq L13
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/h Lcmb/pb/ui/f;
if_acmpne L14
L13:
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/j(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
getstatic cmb/pb/ui/f/b Lcmb/pb/ui/f;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/PBKeyboardActivity;Lcmb/pb/ui/f;)V
goto L6
L14:
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/f Lcmb/pb/ui/f;
if_acmpne L15
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/b(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/TextView;
ifnull L16
L0:
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/c(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/app/Activity;
ldc "string"
ldc "cmbkb_back"
invokestatic cmb/pb/util/i/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
istore 1
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokevirtual cmb/pb/ui/PBKeyboardActivity/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 4
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/b(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/TextView;
aload 4
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/b(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/TextView;
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/n(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
L16:
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/j(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
getstatic cmb/pb/ui/f/b Lcmb/pb/ui/f;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/PBKeyboardActivity;Lcmb/pb/ui/f;)V
goto L6
L15:
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/i Lcmb/pb/ui/f;
if_acmpne L17
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/k(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
getstatic cmb/pb/ui/f/j Lcmb/pb/ui/f;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/PBKeyboardActivity;Lcmb/pb/ui/f;)V
goto L6
L17:
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/j Lcmb/pb/ui/f;
if_acmpne L18
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/o(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
getstatic cmb/pb/ui/f/i Lcmb/pb/ui/f;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/PBKeyboardActivity;Lcmb/pb/ui/f;)V
goto L6
L18:
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/k Lcmb/pb/ui/f;
if_acmpne L19
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/o(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
getstatic cmb/pb/ui/f/i Lcmb/pb/ui/f;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/PBKeyboardActivity;Lcmb/pb/ui/f;)V
goto L6
L19:
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/o(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
getstatic cmb/pb/ui/f/i Lcmb/pb/ui/f;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/PBKeyboardActivity;Lcmb/pb/ui/f;)V
goto L6
L11:
iload 1
bipush -6
if_icmpne L20
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/j Lcmb/pb/ui/f;
if_acmpne L21
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/p(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
getstatic cmb/pb/ui/f/k Lcmb/pb/ui/f;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/PBKeyboardActivity;Lcmb/pb/ui/f;)V
goto L6
L21:
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;
getstatic cmb/pb/ui/f/k Lcmb/pb/ui/f;
if_acmpne L22
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/k(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
getstatic cmb/pb/ui/f/j Lcmb/pb/ui/f;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/PBKeyboardActivity;Lcmb/pb/ui/f;)V
goto L6
L22:
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/o(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
invokevirtual android/inputmethodservice/KeyboardView/setKeyboard(Landroid/inputmethodservice/Keyboard;)V
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
getstatic cmb/pb/ui/f/i Lcmb/pb/ui/f;
invokestatic cmb/pb/ui/PBKeyboardActivity/a(Lcmb/pb/ui/PBKeyboardActivity;Lcmb/pb/ui/f;)V
goto L6
L20:
iload 1
ldc_w 57419
if_icmpne L23
iload 3
ifle L6
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/g(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/EditText;
iload 3
iconst_1
isub
invokevirtual android/widget/EditText/setSelection(I)V
goto L6
L23:
iload 1
ldc_w 57421
if_icmpne L24
iload 3
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/g(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/length()I
if_icmpge L6
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/g(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/EditText;
iload 3
iconst_1
iadd
invokevirtual android/widget/EditText/setSelection(I)V
goto L6
L24:
iload 1
sipush 128
if_icmpne L25
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/h(Lcmb/pb/ui/PBKeyboardActivity;)Z
ifeq L26
invokestatic cmb/pb/ui/PBKeyboardActivity/e()Lcmb/pb/ui/cmbwidget/e;
ifnull L26
invokestatic cmb/pb/ui/PBKeyboardActivity/e()Lcmb/pb/ui/cmbwidget/e;
iload 3
ldc "\u20ac"
invokevirtual cmb/pb/ui/cmbwidget/e/a(ILjava/lang/String;)V
aload 2
iload 3
ldc "*"
invokeinterface android/text/Editable/insert(ILjava/lang/CharSequence;)Landroid/text/Editable; 2
pop
goto L6
L26:
aload 2
iload 3
ldc "\u20ac"
invokeinterface android/text/Editable/insert(ILjava/lang/CharSequence;)Landroid/text/Editable; 2
pop
goto L6
L25:
aload 0
getfield cmb/pb/ui/c/a Lcmb/pb/ui/PBKeyboardActivity;
invokestatic cmb/pb/ui/PBKeyboardActivity/h(Lcmb/pb/ui/PBKeyboardActivity;)Z
ifeq L27
invokestatic cmb/pb/ui/PBKeyboardActivity/e()Lcmb/pb/ui/cmbwidget/e;
ifnull L27
invokestatic cmb/pb/ui/PBKeyboardActivity/e()Lcmb/pb/ui/cmbwidget/e;
iload 3
iload 1
i2c
invokestatic java/lang/Character/toString(C)Ljava/lang/String;
invokevirtual cmb/pb/ui/cmbwidget/e/a(ILjava/lang/String;)V
aload 2
iload 3
ldc "*"
invokeinterface android/text/Editable/insert(ILjava/lang/CharSequence;)Landroid/text/Editable; 2
pop
goto L6
L27:
aload 2
iload 3
iload 1
i2c
invokestatic java/lang/Character/toString(C)Ljava/lang/String;
invokeinterface android/text/Editable/insert(ILjava/lang/CharSequence;)Landroid/text/Editable; 2
pop
goto L6
L2:
astore 4
goto L1
.limit locals 7
.limit stack 3
.end method

.method public onPress(I)V
return
.limit locals 2
.limit stack 0
.end method

.method public onRelease(I)V
return
.limit locals 2
.limit stack 0
.end method

.method public onText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 0
.end method

.method public swipeDown()V
return
.limit locals 1
.limit stack 0
.end method

.method public swipeLeft()V
return
.limit locals 1
.limit stack 0
.end method

.method public swipeRight()V
return
.limit locals 1
.limit stack 0
.end method

.method public swipeUp()V
return
.limit locals 1
.limit stack 0
.end method
