.bytecode 50.0
.class synchronized com/android/u/weibo/contact/ui/activity/MyContact$4
.super java/lang/Object
.implements android/text/TextWatcher
.enclosing method com/android/u/weibo/contact/ui/activity/MyContact
.inner class inner com/android/u/weibo/contact/ui/activity/MyContact$4

.field final synthetic 'this$0' Lcom/android/u/weibo/contact/ui/activity/MyContact;

.method <init>(Lcom/android/u/weibo/contact/ui/activity/MyContact;)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/activity/MyContact$4/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
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
getfield com/android/u/weibo/contact/ui/activity/MyContact$4/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
invokestatic com/android/u/weibo/contact/ui/activity/MyContact/access$2100(Lcom/android/u/weibo/contact/ui/activity/MyContact;)Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/android/u/weibo/contact/ui/activity/MyContact$4/this$0 Lcom/android/u/weibo/contact/ui/activity/MyContact;
iconst_1
putfield com/android/u/weibo/contact/ui/activity/MyContact/m_bModifiedSign Z
return
.limit locals 5
.limit stack 2
.end method
