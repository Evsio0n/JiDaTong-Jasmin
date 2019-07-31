.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$1
.super android/os/Handler
.enclosing method com/nd/android/u/cloud/activity/guide/CheckPhoneActivity
.inner class inner com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;
invokestatic com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/access$000(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;)I
ifgt L0
new android/text/SpannableString
dup
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493953
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 1
aload 1
new android/text/style/UnderlineSpan
dup
invokespecial android/text/style/UnderlineSpan/<init>()V
iconst_0
aload 1
invokevirtual android/text/SpannableString/length()I
bipush 33
invokevirtual android/text/SpannableString/setSpan(Ljava/lang/Object;III)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;
invokestatic com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/access$100(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;)Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;
invokestatic com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/access$100(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;)Landroid/widget/TextView;
iconst_1
invokevirtual android/widget/TextView/setClickable(Z)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;
invokestatic com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/access$010(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;)I
pop
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493957
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;
invokestatic com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/access$100(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;)Landroid/widget/TextView;
aload 1
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$1/this$0 Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;
invokestatic com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/access$000(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 6
.end method
