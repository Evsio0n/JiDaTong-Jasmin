.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private SearchFansTask inner com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansTask outer com/nd/android/u/contact/activity/SearchFansResultActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SearchFansResultActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansTask/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;Lcom/nd/android/u/contact/activity/SearchFansResultActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansTask/<init>(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansTask/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$000(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Lcom/product/android/commonInterface/weibo/IdolList;
ifnonnull L0
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansTask/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
new com/product/android/commonInterface/weibo/IdolList
dup
invokespecial com/product/android/commonInterface/weibo/IdolList/<init>()V
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$002(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;Lcom/product/android/commonInterface/weibo/IdolList;)Lcom/product/android/commonInterface/weibo/IdolList;
pop
L1:
iconst_1
istore 2
L2:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iload 2
bipush 20
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel/getFansList(JII)Lcom/product/android/commonInterface/weibo/IdolList;
astore 1
aload 1
ifnull L3
aload 1
invokevirtual com/product/android/commonInterface/weibo/IdolList/size()I
ifle L3
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansTask/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$000(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Lcom/product/android/commonInterface/weibo/IdolList;
aload 1
invokevirtual com/product/android/commonInterface/weibo/IdolList/addAll(Ljava/util/Collection;)Z
pop
aload 1
invokevirtual com/product/android/commonInterface/weibo/IdolList/clear()V
iload 2
iconst_1
iadd
istore 2
goto L2
L0:
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansTask/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$000(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Lcom/product/android/commonInterface/weibo/IdolList;
invokevirtual com/product/android/commonInterface/weibo/IdolList/clear()V
goto L1
L3:
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansTask/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$000(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Lcom/product/android/commonInterface/weibo/IdolList;
ifnull L4
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansTask/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$000(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Lcom/product/android/commonInterface/weibo/IdolList;
invokevirtual com/product/android/commonInterface/weibo/IdolList/size()I
ifle L4
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$SearchFansTask/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$200(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L4:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 3
.limit stack 4
.end method
