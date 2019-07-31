.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYSelectRecipientActivity$1
.super android/os/Handler
.enclosing method com/nd/android/u/contact/activity/XYSelectRecipientActivity
.inner class inner com/nd/android/u/contact/activity/XYSelectRecipientActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
aload 1
getfield android/os/Message/what I
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$002(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;I)I
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$102(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;I)I
pop
ldc "SelectRecipientActivity"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "handler'total:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$000(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$000(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)I
ifne L4
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$200(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$000(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)I
bipush 21
if_icmpge L6
ldc "SelectRecipientActivity"
ldc "footview\u53d6\u6d88"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$300(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$400(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual com/nd/android/u/contact/adapter/SelectRecipientAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
iconst_1
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$602(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;Z)Z
pop
L3:
return
L4:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$300(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setSelection(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$200(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L5:
goto L1
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L6:
return
.limit locals 2
.limit stack 3
.end method
