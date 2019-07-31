.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$1
.super java/lang/Object
.implements android/text/TextWatcher
.enclosing method com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/initEvent()V
.inner class inner com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;

.method <init>(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$1/this$0 Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;
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
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$1/this$0 Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;
invokestatic com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/access$000(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;)Landroid/widget/TextView;
aload 1
invokeinterface java/lang/CharSequence/length()I 0
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 5
.limit stack 2
.end method
