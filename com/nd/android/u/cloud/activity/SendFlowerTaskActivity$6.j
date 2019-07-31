.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/SendFlowerTaskActivity$6
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/cloud/activity/SendFlowerTaskActivity
.inner class inner com/nd/android/u/cloud/activity/SendFlowerTaskActivity$6

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$6/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
.catch java/lang/ClassCastException from L0 to L1 using L2
.catch java/lang/ClassCastException from L1 to L3 using L2
.catch java/lang/ClassCastException from L4 to L5 using L2
.catch java/lang/ClassCastException from L6 to L7 using L2
.catch java/lang/ClassCastException from L7 to L8 using L2
.catch java/lang/ClassCastException from L9 to L10 using L2
.catch java/lang/ClassCastException from L11 to L12 using L2
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L13
L0:
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$6/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/paraData Ljava/lang/Object;
checkcast java/util/ArrayList
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$002(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
pop
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$6/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$000(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Ljava/util/ArrayList;
ifnull L11
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$6/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$000(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifeq L11
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
new com/product/android/commonInterface/contact/OapUser
dup
invokespecial com/product/android/commonInterface/contact/OapUser/<init>()V
pop
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$6/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$000(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
astore 4
aload 1
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 4
invokevirtual java/lang/Long/longValue()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getComment()Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L3:
goto L1
L4:
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$6/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$900(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
aload 1
invokevirtual com/nd/android/u/contact/adapter/AutoTextAdapter/setStringArray(Ljava/util/ArrayList;)V
aload 1
invokevirtual java/util/ArrayList/size()I
istore 3
L5:
iload 3
iconst_4
if_icmple L9
L6:
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$6/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$700(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Landroid/widget/AutoCompleteTextView;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$6/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
ldc_w 222.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
invokevirtual android/widget/AutoCompleteTextView/setDropDownHeight(I)V
L7:
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$6/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$900(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
invokevirtual com/nd/android/u/contact/adapter/AutoTextAdapter/notifyDataSetChanged()V
L8:
return
L9:
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$6/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$700(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Landroid/widget/AutoCompleteTextView;
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$6/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
iload 3
bipush 48
imul
bipush 12
iadd
i2f
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
invokevirtual android/widget/AutoCompleteTextView/setDropDownHeight(I)V
L10:
goto L7
L11:
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$6/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$900(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
aconst_null
invokevirtual com/nd/android/u/contact/adapter/AutoTextAdapter/setStringArray(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$6/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$700(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Landroid/widget/AutoCompleteTextView;
iconst_0
invokevirtual android/widget/AutoCompleteTextView/setDropDownHeight(I)V
aload 0
getfield com/nd/android/u/cloud/activity/SendFlowerTaskActivity$6/this$0 Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;
invokestatic com/nd/android/u/cloud/activity/SendFlowerTaskActivity/access$900(Lcom/nd/android/u/cloud/activity/SendFlowerTaskActivity;)Lcom/nd/android/u/contact/adapter/AutoTextAdapter;
invokevirtual com/nd/android/u/contact/adapter/AutoTextAdapter/notifyDataSetChanged()V
L12:
return
L2:
astore 1
L13:
return
.limit locals 5
.limit stack 4
.end method
