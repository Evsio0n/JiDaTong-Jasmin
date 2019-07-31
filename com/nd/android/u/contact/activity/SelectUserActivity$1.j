.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SelectUserActivity$1
.super android/os/Handler
.enclosing method com/nd/android/u/contact/activity/SelectUserActivity
.inner class inner com/nd/android/u/contact/activity/SelectUserActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SelectUserActivity;

.method <init>(Lcom/nd/android/u/contact/activity/SelectUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
aload 1
getfield android/os/Message/what I
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$002(Lcom/nd/android/u/contact/activity/SelectUserActivity;I)I
pop
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$100(Lcom/nd/android/u/contact/activity/SelectUserActivity;)Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
aload 1
getfield android/os/Message/what I
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/setmCurrentTabId(I)V
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$200(Lcom/nd/android/u/contact/activity/SelectUserActivity;)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$000(Lcom/nd/android/u/contact/activity/SelectUserActivity;)I
iconst_2
if_icmpeq L0
return
L0:
aload 1
getfield android/os/Message/what I
lookupswitch
2 : L1
50 : L2
51 : L3
default : L4
L4:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$400(Lcom/nd/android/u/contact/activity/SelectUserActivity;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$500(Lcom/nd/android/u/contact/activity/SelectUserActivity;)Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$500(Lcom/nd/android/u/contact/activity/SelectUserActivity;)Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/bt_add_bg I
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L2:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 2
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$300(Lcom/nd/android/u/contact/activity/SelectUserActivity;)Lcom/nd/android/u/contact/activity/SelectUserActivity$ImageAdapter;
lload 2
invokevirtual com/nd/android/u/contact/activity/SelectUserActivity$ImageAdapter/addUid(J)V
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/SelectUserActivity/setGridViewWidth()V
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/SelectUserActivity/setFinishBtnText()V
return
L3:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 2
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokestatic com/nd/android/u/contact/activity/SelectUserActivity/access$300(Lcom/nd/android/u/contact/activity/SelectUserActivity;)Lcom/nd/android/u/contact/activity/SelectUserActivity$ImageAdapter;
lload 2
invokevirtual com/nd/android/u/contact/activity/SelectUserActivity$ImageAdapter/removeUid(J)V
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/SelectUserActivity/setGridViewWidth()V
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/SelectUserActivity/setFinishBtnText()V
return
.limit locals 4
.limit stack 3
.end method
