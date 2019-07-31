.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private GetPspInfoListTask inner com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask outer com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment

.field public 'searchKey' Ljava/lang/String;

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;

.method public <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
aload 0
aload 2
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/searchKey Ljava/lang/String;
return
.limit locals 3
.limit stack 2
.end method

.method private getCommentList()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1300(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Ljava/util/ArrayList;
ifnonnull L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1302(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
pop
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1300(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
L3:
iconst_0
istore 1
L4:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/searchKey Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isNumeric(Ljava/lang/String;)Z
ifeq L5
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/searchKey Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1300(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Ljava/util/ArrayList;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/searchExPspDataById(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I
istore 1
L5:
iload 1
ifne L7
L6:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1400(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)I
iconst_1
isub
bipush 20
imul
bipush 20
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/searchKey Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1300(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Ljava/util/ArrayList;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/searchPspData(IILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I
pop
L7:
return
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 3
.limit stack 5
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/getCommentList()V
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$1300(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Ljava/util/ArrayList;
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/paraData Ljava/lang/Object;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/paraData Ljava/lang/Object;
ifnonnull L0
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 2
.end method
