.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYSelectRecipientActivity$SearchUserTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private SearchUserTask inner com/nd/android/u/contact/activity/XYSelectRecipientActivity$SearchUserTask outer com/nd/android/u/contact/activity/XYSelectRecipientActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/XYSelectRecipientActivity$SearchUserTask/<init>(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$1300(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$1400(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
astore 1
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$100(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)I
iconst_1
iadd
bipush 20
aload 1
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchContracByKey(IILjava/lang/String;)Ljava/util/List; 3
astore 2
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapUserDao/getSearchContracByKeySize(Ljava/lang/String;)I 1
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$002(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;I)I
pop
aload 2
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$800(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Ljava/util/List;
aload 2
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$800(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/SelectRecipientAdapter/setList(Ljava/util/List;)V
L2:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L1:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
iconst_0
bipush 20
ldc ""
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchContracByKey(IILjava/lang/String;)Ljava/util/List; 3
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$802(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;Ljava/util/List;)Ljava/util/List;
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
invokeinterface com/nd/android/u/contact/dao/OapUserDao/getsearchContractSize()I 0
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$002(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;I)I
pop
ldc "SelectRecipientActivity"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u603b\u6570: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectRecipientActivity/access$000(Lcom/nd/android/u/contact/activity/XYSelectRecipientActivity;)I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L2
.limit locals 3
.limit stack 5
.end method
