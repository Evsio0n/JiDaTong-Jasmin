.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYSelectRecipientActivity$4
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.enclosing method com/nd/android/u/contact/activity/XYSelectRecipientActivity
.inner class inner com/nd/android/u/contact/activity/XYSelectRecipientActivity$4

.field 'end_index' I

.field 'start_index' I

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
aload 0
iload 2
putfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/start_index I
aload 0
iload 2
iload 3
iadd
putfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/end_index I
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/end_index I
iload 4
if_icmplt L0
aload 0
iload 4
iconst_1
isub
putfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/end_index I
L0:
return
.limit locals 5
.limit stack 3
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
iload 2
tableswitch 0
L0
L1
L1
default : L1
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$1500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Z
ifne L1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/end_index I
sipush 500
if_icmple L2
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$600(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Z
ifne L1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$300(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$400(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual com/nd/android/u/contact/adapter/SelectRecipientAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
iconst_1
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$602(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;Z)Z
pop
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/end_index I
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual com/nd/android/u/contact/adapter/SelectRecipientAdapter/getCount()I
if_icmpeq L3
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$600(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/end_index I
iconst_1
iadd
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual com/nd/android/u/contact/adapter/SelectRecipientAdapter/getCount()I
if_icmpne L1
L3:
ldc "SelectRecipientActivity"
ldc "\u52a0\u8f7d\u6570\u636e"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
ldc "SelectRecipientActivity"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$000(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " \u603b\u6570> ?<: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$100(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)I
bipush 20
imul
bipush 20
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$1500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Z
ifne L4
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$100(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)I
bipush 20
imul
bipush 20
iadd
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$000(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)I
if_icmplt L4
ldc "SelectRecipientActivity"
ldc "footview\u53d6\u6d88"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$300(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$400(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/removeFooterView(Landroid/view/View;)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual com/nd/android/u/contact/adapter/SelectRecipientAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
iconst_1
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$602(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;Z)Z
pop
return
L4:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$1500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Z
ifne L5
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$600(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Z
ifeq L5
ldc "SelectRecipientActivity"
ldc "\u6dfb\u52a0footview"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$300(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$400(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$300(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$602(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;Z)Z
pop
L5:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokevirtual com/nd/android/u/contact/activity/XYSelectRecipientActivity/moresearchFriend()V
return
.limit locals 3
.limit stack 4
.end method
