.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchUserActivity$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/activity/SearchUserActivity
.inner class inner com/nd/android/u/contact/activity/SearchUserActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SearchUserActivity;

.field 'username' Ljava/lang/String;

.method <init>(Lcom/nd/android/u/contact/activity/SearchUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SearchUserActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
aload 0
getfield com/nd/android/u/contact/activity/SearchUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SearchUserActivity;
invokestatic com/nd/android/u/contact/activity/SearchUserActivity/access$000(Lcom/nd/android/u/contact/activity/SearchUserActivity;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
putfield com/nd/android/u/contact/activity/SearchUserActivity$2/username Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserActivity$2/username Ljava/lang/String;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/SearchUserActivity$2/username Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
aload 0
getfield com/nd/android/u/contact/activity/SearchUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SearchUserActivity;
getstatic com/nd/android/u/contact/R$string/please_enter_name I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L1:
aload 0
aload 0
getfield com/nd/android/u/contact/activity/SearchUserActivity$2/username Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
putfield com/nd/android/u/contact/activity/SearchUserActivity$2/username Ljava/lang/String;
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/contact/activity/SearchUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SearchUserActivity;
ldc com/nd/android/u/contact/activity/SearchUserResultActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "username"
aload 0
getfield com/nd/android/u/contact/activity/SearchUserActivity$2/username Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/contact/activity/SearchUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/SearchUserActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/SearchUserActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 3
.end method
