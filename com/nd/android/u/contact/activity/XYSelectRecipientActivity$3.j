.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYSelectRecipientActivity$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/XYSelectRecipientActivity
.inner class inner com/nd/android/u/contact/activity/XYSelectRecipientActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$1300(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$1502(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;Z)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$108(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)I
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual com/nd/android/u/contact/adapter/SelectRecipientAdapter/notifyDataSetChanged()V
L2:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$000(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)I
ifne L3
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$200(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L4:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
ifnonnull L5
ldc "SelectRecipientActivity"
ldc "adapter null"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
new com/nd/android/u/contact/adapter/SelectRecipientAdapter
dup
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$800(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$900(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$1000(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$1100(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Ljava/util/List;
invokespecial com/nd/android/u/contact/adapter/SelectRecipientAdapter/<init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;Ljava/util/ArrayList;Ljava/util/List;)V
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$502(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$300(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
L3:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$000(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)I
bipush 20
if_icmple L6
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$200(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
ldc "SelectRecipientActivity"
ldc "\u7b2c\u4e00\u6b21\u6dfb\u52a0footview"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$300(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$400(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$602(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;Z)Z
pop
goto L4
L6:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
iconst_1
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$602(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;Z)Z
pop
goto L4
L5:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$800(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/SelectRecipientAdapter/setList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual com/nd/android/u/contact/adapter/SelectRecipientAdapter/notifyDataSetChanged()V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
ifnonnull L7
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
new com/nd/android/u/contact/adapter/SelectRecipientAdapter
dup
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$800(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$900(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$1000(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$1100(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Ljava/util/List;
invokespecial com/nd/android/u/contact/adapter/SelectRecipientAdapter/<init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;Ljava/util/ArrayList;Ljava/util/List;)V
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$502(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$300(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
L7:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$1300(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$1502(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;Z)Z
pop
return
.limit locals 3
.limit stack 8
.end method
