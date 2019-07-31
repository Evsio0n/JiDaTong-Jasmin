.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/ContactMainFragment$UpdateFrinedListTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private UpdateFrinedListTask inner com/nd/android/u/contact/fragment/ContactMainFragment$UpdateFrinedListTask outer com/nd/android/u/contact/fragment/ContactMainFragment

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/ContactMainFragment;

.method private <init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/ContactMainFragment$UpdateFrinedListTask/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment;Lcom/nd/android/u/contact/fragment/ContactMainFragment$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/fragment/ContactMainFragment$UpdateFrinedListTask/<init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)V
return
.limit locals 3
.limit stack 2
.end method

.method public transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$UpdateFrinedListTask/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokestatic com/nd/android/u/contact/fragment/ContactMainFragment/access$700(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$UpdateFrinedListTask/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokestatic com/nd/android/u/contact/fragment/ContactMainFragment/access$800(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iconst_1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/refresh(JZ)Z 3
pop
L0:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 4
.end method
