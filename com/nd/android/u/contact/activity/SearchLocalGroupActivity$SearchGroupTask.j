.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class protected SearchGroupTask inner com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask outer com/nd/android/u/contact/activity/SearchLocalGroupActivity

.field private 'key' Ljava/lang/String;

.field private 'tempList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"

.field private 'tempTotal' I

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity;

.method protected <init>(Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask/this$0 Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask/tempList Ljava/util/List;
aload 0
ldc ""
putfield com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask/key Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask/tempTotal I
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
putfield com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask/key Ljava/lang/String;
L1:
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask/this$0 Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity;
aload 0
invokestatic com/nd/android/u/contact/activity/SearchLocalGroupActivity/access$000(Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity;Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask;)V
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
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;)V"
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask/tempList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public final clearList()V
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask/tempList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public final getKey()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask/key Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getTempList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask/tempList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getTempTotal()I
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask/tempTotal I
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
putfield com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask/tempTotal I
return
.limit locals 2
.limit stack 2
.end method
