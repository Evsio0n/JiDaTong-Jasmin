.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/TagManagerActivity$2
.super android/os/Handler
.enclosing method com/nd/android/u/contact/activity/TagManagerActivity
.inner class inner com/nd/android/u/contact/activity/TagManagerActivity$2

.field 'currentid' I

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/TagManagerActivity;

.method <init>(Lcom/nd/android/u/contact/activity/TagManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/TagManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 200
L0
default : L1
L1:
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
getfield com/nd/android/u/contact/activity/TagManagerActivity/numberText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/selected_num_tag I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
getfield com/nd/android/u/contact/activity/TagManagerActivity/selectedAdapter Lcom/nd/android/u/contact/activity/TagManagerActivity$CardAdapter;
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity$CardAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/controlShow()V
return
L0:
aload 0
aload 1
getfield android/os/Message/arg1 I
putfield com/nd/android/u/contact/activity/TagManagerActivity$2/currentid I
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
getfield com/nd/android/u/contact/activity/TagManagerActivity/groupNameText Landroid/widget/TextView;
invokestatic com/nd/android/u/contact/util/Taghelper/getInstance()Lcom/nd/android/u/contact/util/Taghelper;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$2/currentid I
invokevirtual com/nd/android/u/contact/util/Taghelper/getGroupName(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
getfield com/nd/android/u/contact/activity/TagManagerActivity/commentText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u3000("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic com/nd/android/u/contact/util/Taghelper/getInstance()Lcom/nd/android/u/contact/util/Taghelper;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$2/currentid I
invokevirtual com/nd/android/u/contact/util/Taghelper/getComment(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 6
.end method
