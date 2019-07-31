.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/PersonalityTagActivity$GetNextPageTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class public GetNextPageTask inner com/nd/android/u/contact/activity/PersonalityTagActivity$GetNextPageTask outer com/nd/android/u/contact/activity/PersonalityTagActivity

.field 'mTagUserList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/contact/view/PhotoWallItem;>;"

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/PersonalityTagActivity;

.method public <init>(Lcom/nd/android/u/contact/activity/PersonalityTagActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/PersonalityTagActivity$GetNextPageTask/this$0 Lcom/nd/android/u/contact/activity/PersonalityTagActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/PersonalityTagActivity$GetNextPageTask/mTagUserList Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 3
.end method

.method public transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L1 to L3 using L2
.catch com/common/android/utils/http/HttpException from L4 to L5 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapTagCom()Lcom/nd/android/u/contact/com/OapTagCom;
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity$GetNextPageTask/this$0 Lcom/nd/android/u/contact/activity/PersonalityTagActivity;
invokestatic com/nd/android/u/contact/activity/PersonalityTagActivity/access$100(Lcom/nd/android/u/contact/activity/PersonalityTagActivity;)I
bipush 20
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity$GetNextPageTask/this$0 Lcom/nd/android/u/contact/activity/PersonalityTagActivity;
invokestatic com/nd/android/u/contact/activity/PersonalityTagActivity/access$000(Lcom/nd/android/u/contact/activity/PersonalityTagActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
invokevirtual com/product/android/ui/widget/PagingLoadListView/getCurrentTotalNumber()I
aload 1
invokevirtual com/nd/android/u/contact/com/OapTagCom/getTagUserList(IIILjava/util/ArrayList;)I
pop
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 2
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity$GetNextPageTask/this$0 Lcom/nd/android/u/contact/activity/PersonalityTagActivity;
lload 2
invokevirtual com/nd/android/u/contact/activity/PersonalityTagActivity/createPhotoWallItem(J)Lcom/nd/android/u/contact/view/PhotoWallItem;
astore 4
L3:
aload 4
ifnull L1
L4:
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity$GetNextPageTask/mTagUserList Ljava/util/ArrayList;
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L5:
goto L1
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L6:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 5
.limit stack 5
.end method

.method protected onPreExecute()V
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/onPreExecute()V
return
.limit locals 1
.limit stack 1
.end method
