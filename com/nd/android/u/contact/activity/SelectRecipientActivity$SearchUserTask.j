.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SelectRecipientActivity$SearchUserTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private SearchUserTask inner com/nd/android/u/contact/activity/SelectRecipientActivity$SearchUserTask outer com/nd/android/u/contact/activity/SelectRecipientActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SelectRecipientActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;Lcom/nd/android/u/contact/activity/SelectRecipientActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/SelectRecipientActivity$SearchUserTask/<init>(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$1200(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$1300(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
astore 1
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$100(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)I
iconst_1
iadd
bipush 20
aload 1
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchContracByKey(IILjava/lang/String;)Ljava/util/List; 3
astore 2
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapUserDao/getSearchContracByKeySize(Ljava/lang/String;)I 1
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$002(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;I)I
pop
aload 2
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$700(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Ljava/util/List;
aload 2
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$500(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Lcom/nd/android/u/contact/adapter/SelectRecipientAdapter;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$700(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/SelectRecipientAdapter/setList(Ljava/util/List;)V
L2:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L1:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
iconst_0
bipush 20
ldc ""
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchContracByKey(IILjava/lang/String;)Ljava/util/List; 3
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$702(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;Ljava/util/List;)Ljava/util/List;
pop
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
invokeinterface com/nd/android/u/contact/dao/OapUserDao/getsearchContractSize()I 0
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$002(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;I)I
pop
ldc "SelectRecipientActivity"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u603b\u6570: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/activity/SelectRecipientActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/SelectRecipientActivity;
invokestatic com/nd/android/u/contact/activity/SelectRecipientActivity/access$000(Lcom/nd/android/u/contact/activity/SelectRecipientActivity;)I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L2
.limit locals 3
.limit stack 5
.end method
