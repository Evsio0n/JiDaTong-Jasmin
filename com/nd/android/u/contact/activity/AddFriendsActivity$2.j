.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/AddFriendsActivity$2
.super java/lang/Object
.implements android/text/TextWatcher
.enclosing method com/nd/android/u/contact/activity/AddFriendsActivity
.inner class inner com/nd/android/u/contact/activity/AddFriendsActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/AddFriendsActivity;

.method <init>(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/AddFriendsActivity$2/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
return
.limit locals 2
.limit stack 0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
aload 1
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
astore 1
aload 1
ifnull L0
aload 1
invokevirtual java/lang/String/length()I
ifle L0
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$2/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$100(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$2/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$100(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 5
.limit stack 2
.end method
