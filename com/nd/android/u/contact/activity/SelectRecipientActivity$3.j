.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SelectRecipientActivity$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/SelectRecipientActivity
.inner class inner com/nd/android/u/contact/activity/SelectRecipientActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SelectRecipientActivity;

.method <init>(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
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
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$1200(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$1402(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;Z)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$108(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)I
pop
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual com/nd/android/u/contact/adapter/SelectRecipientAdapter/notifyDataSetChanged()V
L2:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$000(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)I
ifne L3
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$200(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L4:
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
ifnonnull L5
ldc "SelectRecipientActivity"
ldc "adapter null"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
new com/nd/android/u/contact/adapter/SelectRecipientAdapter
dup
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$700(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$800(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$900(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$1000(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Ljava/util/List;
invokespecial com/nd/android/u/contact/adapter/SelectRecipientAdapter/<init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;Ljava/util/ArrayList;Ljava/util/List;)V
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$502(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
pop
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$300(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
L3:
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$000(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)I
bipush 20
if_icmple L6
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$200(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
ldc "SelectRecipientActivity"
ldc "\u7b2c\u4e00\u6b21\u6dfb\u52a0footview"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$300(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$400(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$602(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;Z)Z
pop
goto L4
L6:
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
iconst_1
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$602(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;Z)Z
pop
goto L4
L5:
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$700(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/SelectRecipientAdapter/setList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual com/nd/android/u/contact/adapter/SelectRecipientAdapter/notifyDataSetChanged()V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
ifnonnull L7
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
new com/nd/android/u/contact/adapter/SelectRecipientAdapter
dup
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$700(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$800(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$900(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$1000(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Ljava/util/List;
invokespecial com/nd/android/u/contact/adapter/SelectRecipientAdapter/<init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;Ljava/util/ArrayList;Ljava/util/List;)V
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$502(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
pop
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$300(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
L7:
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$1200(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$3/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$1402(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;Z)Z
pop
return
.limit locals 3
.limit stack 8
.end method
