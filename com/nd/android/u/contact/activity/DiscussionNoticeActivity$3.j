.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/DiscussionNoticeActivity$3
.super java/lang/Object
.implements android/text/TextWatcher
.enclosing method com/nd/android/u/contact/activity/DiscussionNoticeActivity
.inner class inner com/nd/android/u/contact/activity/DiscussionNoticeActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/DiscussionNoticeActivity;

.method <init>(Lcom/nd/android/u/contact/activity/DiscussionNoticeActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/DiscussionNoticeActivity$3/this$0 Lcom/nd/android/u/contact/activity/DiscussionNoticeActivity;
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
getfield com/nd/android/u/contact/activity/DiscussionNoticeActivity$3/this$0 Lcom/nd/android/u/contact/activity/DiscussionNoticeActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionNoticeActivity/access$400(Lcom/nd/android/u/contact/activity/DiscussionNoticeActivity;)Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokeinterface java/lang/CharSequence/length()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 5
.limit stack 3
.end method
