.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dialog/AddFriendGroupDialog$MagicTextLengthWatcher
.super java/lang/Object
.implements android/text/TextWatcher
.inner class public MagicTextLengthWatcher inner com/nd/android/u/contact/dialog/AddFriendGroupDialog$MagicTextLengthWatcher outer com/nd/android/u/contact/dialog/AddFriendGroupDialog

.field private 'currentEnd' I

.field private 'maxLength' I

.field final synthetic 'this$0' Lcom/nd/android/u/contact/dialog/AddFriendGroupDialog;

.method public <init>(Lcom/nd/android/u/contact/dialog/AddFriendGroupDialog;I)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/AddFriendGroupDialog$MagicTextLengthWatcher/this$0 Lcom/nd/android/u/contact/dialog/AddFriendGroupDialog;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/dialog/AddFriendGroupDialog$MagicTextLengthWatcher/currentEnd I
aload 0
iload 2
invokevirtual com/nd/android/u/contact/dialog/AddFriendGroupDialog$MagicTextLengthWatcher/setMaxLength(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dialog/AddFriendGroupDialog$MagicTextLengthWatcher/calculateLength(Ljava/lang/CharSequence;)I
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendGroupDialog$MagicTextLengthWatcher/maxLength I
if_icmple L1
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendGroupDialog$MagicTextLengthWatcher/currentEnd I
iconst_1
isub
putfield com/nd/android/u/contact/dialog/AddFriendGroupDialog$MagicTextLengthWatcher/currentEnd I
aload 1
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendGroupDialog$MagicTextLengthWatcher/currentEnd I
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendGroupDialog$MagicTextLengthWatcher/currentEnd I
iconst_1
iadd
invokeinterface android/text/Editable/delete(II)Landroid/text/Editable; 2
pop
goto L0
L1:
return
.limit locals 2
.limit stack 4
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method

.method protected calculateLength(Ljava/lang/CharSequence;)I
iconst_0
istore 2
aload 1
invokeinterface java/lang/CharSequence/length()I 0
istore 4
iconst_0
istore 3
L0:
iload 3
iload 4
if_icmpge L1
aload 1
iload 3
invokeinterface java/lang/CharSequence/charAt(I)C 1
istore 5
iload 5
bipush 32
if_icmplt L2
iload 5
bipush 126
if_icmpgt L2
iload 2
iconst_1
iadd
istore 2
L3:
iload 3
iconst_1
iadd
istore 3
goto L0
L2:
iload 2
iconst_2
iadd
istore 2
goto L3
L1:
iload 2
ireturn
.limit locals 6
.limit stack 2
.end method

.method public getMaxLength()I
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendGroupDialog$MagicTextLengthWatcher/maxLength I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
aload 0
iload 2
iload 4
iadd
putfield com/nd/android/u/contact/dialog/AddFriendGroupDialog$MagicTextLengthWatcher/currentEnd I
return
.limit locals 5
.limit stack 3
.end method

.method public final setMaxLength(I)V
iload 1
iflt L0
aload 0
iload 1
putfield com/nd/android/u/contact/dialog/AddFriendGroupDialog$MagicTextLengthWatcher/maxLength I
return
L0:
aload 0
iconst_0
putfield com/nd/android/u/contact/dialog/AddFriendGroupDialog$MagicTextLengthWatcher/maxLength I
return
.limit locals 2
.limit stack 2
.end method
