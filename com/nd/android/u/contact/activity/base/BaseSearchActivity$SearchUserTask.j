.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class protected SearchUserTask inner com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask outer com/nd/android/u/contact/activity/base/BaseSearchActivity

.field private 'key' Ljava/lang/String;

.field private 'tempList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"

.field private 'tempTotal' I

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;

.method protected <init>(Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask/tempList Ljava/util/List;
aload 0
ldc ""
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask/key Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask/tempTotal I
return
.limit locals 2
.limit stack 3
.end method

.method protected final transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
aload 1
iconst_0
aaload
ldc "key"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask/key Ljava/lang/String;
L1:
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/base/BaseSearchActivity;
aload 0
invokevirtual com/nd/android/u/contact/activity/base/BaseSearchActivity/doSearch(Lcom/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask;)V
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
.limit locals 2
.limit stack 3
.end method

.method public final addAll(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;)V"
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask/tempList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public final clearList()V
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask/tempList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public final getKey()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask/key Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method final getTempList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask/tempList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method final getTempTotal()I
aload 0
getfield com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask/tempTotal I
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected final onPreExecute()V
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/onPreExecute()V
return
.limit locals 1
.limit stack 1
.end method

.method public final setTempTotal(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/activity/base/BaseSearchActivity$SearchUserTask/tempTotal I
return
.limit locals 2
.limit stack 2
.end method
