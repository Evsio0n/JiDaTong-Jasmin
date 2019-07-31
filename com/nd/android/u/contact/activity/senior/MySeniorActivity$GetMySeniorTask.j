.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;>;"
.inner class GetMySeniorTask inner com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask outer com/nd/android/u/contact/activity/senior/MySeniorActivity

.field private 'isGetNetData' Z

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;

.method public <init>(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;Z)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/this$0 Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
iload 2
putfield com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/isGetNetData Z
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L7 to L8 using L2
.catch com/common/android/utils/http/HttpException from L9 to L10 using L2
.catch com/common/android/utils/http/HttpException from L11 to L12 using L2
aload 0
iconst_1
anewarray com/nd/android/u/contact/dataStructure/SeniorInfoListResult
dup
iconst_0
ldc com/nd/android/u/contact/dao/MySeniorDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/MySeniorDao
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/this$0 Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/MySeniorActivity/access$000(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;)J
invokeinterface com/nd/android/u/contact/dao/MySeniorDao/queryMySeniorList(J)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult; 2
aastore
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/publishProgress([Ljava/lang/Object;)V
aconst_null
astore 1
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/isGetNetData Z
ifeq L12
new com/nd/android/u/contact/dataStructure/SeniorInfoListResult
dup
invokespecial com/nd/android/u/contact/dataStructure/SeniorInfoListResult/<init>()V
astore 1
L0:
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
ifeq L13
L1:
iconst_1
istore 2
L3:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getSeniorSystemCom()Lcom/nd/android/u/contact/com/OapSeniorSystemCom;
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/this$0 Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/MySeniorActivity/access$000(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;)J
iload 2
bipush 20
invokevirtual com/nd/android/u/contact/com/OapSeniorSystemCom/getMyJuniorList(JII)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
astore 3
L4:
aload 3
ifnull L11
L5:
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/size()I
ifle L11
aload 1
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/addAll(Ljava/util/Collection;)Z
pop
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/clear()V
L6:
iload 2
iconst_1
iadd
istore 2
goto L3
L7:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getSeniorSystemCom()Lcom/nd/android/u/contact/com/OapSeniorSystemCom;
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/this$0 Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/MySeniorActivity/access$000(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;)J
iload 2
bipush 20
invokevirtual com/nd/android/u/contact/com/OapSeniorSystemCom/getMySeniorList(JII)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
astore 3
L8:
aload 3
ifnull L11
L9:
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/size()I
ifle L11
aload 1
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/addAll(Ljava/util/Collection;)Z
pop
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/clear()V
L10:
iload 2
iconst_1
iadd
istore 2
goto L7
L11:
ldc com/nd/android/u/contact/dao/MySeniorDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/MySeniorDao
iconst_1
aload 1
invokeinterface com/nd/android/u/contact/dao/MySeniorDao/insertMySeniorList(ILcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)V 2
L12:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
areturn
L13:
iconst_1
istore 2
goto L7
.limit locals 4
.limit stack 7
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/doInBackground([Ljava/lang/Void;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)V
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/this$0 Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/MySeniorActivity/access$100(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;)Lcom/nd/android/u/contact/adapter/MySeniorAdapter;
ifnonnull L1
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/this$0 Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;
new com/nd/android/u/contact/adapter/MySeniorAdapter
dup
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/this$0 Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;
invokespecial com/nd/android/u/contact/adapter/MySeniorAdapter/<init>(Landroid/content/Context;)V
invokestatic com/nd/android/u/contact/activity/senior/MySeniorActivity/access$102(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;Lcom/nd/android/u/contact/adapter/MySeniorAdapter;)Lcom/nd/android/u/contact/adapter/MySeniorAdapter;
pop
L1:
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/this$0 Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/MySeniorActivity/access$100(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;)Lcom/nd/android/u/contact/adapter/MySeniorAdapter;
aload 1
invokevirtual com/nd/android/u/contact/adapter/MySeniorAdapter/setData(Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/this$0 Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/MySeniorActivity/access$100(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;)Lcom/nd/android/u/contact/adapter/MySeniorAdapter;
invokevirtual com/nd/android/u/contact/adapter/MySeniorAdapter/notifyDataSetChanged()V
L0:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/nd/android/u/contact/dataStructure/SeniorInfoListResult
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/onPostExecute(Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient onProgressUpdate([Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)V
aload 1
ifnull L0
aload 1
arraylength
ifle L0
aload 1
iconst_0
aaload
astore 2
aload 2
ifnull L0
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/size()I
ifle L0
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/this$0 Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/MySeniorActivity/access$100(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;)Lcom/nd/android/u/contact/adapter/MySeniorAdapter;
ifnonnull L1
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/this$0 Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;
new com/nd/android/u/contact/adapter/MySeniorAdapter
dup
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/this$0 Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;
invokespecial com/nd/android/u/contact/adapter/MySeniorAdapter/<init>(Landroid/content/Context;)V
invokestatic com/nd/android/u/contact/activity/senior/MySeniorActivity/access$102(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;Lcom/nd/android/u/contact/adapter/MySeniorAdapter;)Lcom/nd/android/u/contact/adapter/MySeniorAdapter;
pop
L1:
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/this$0 Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/MySeniorActivity/access$100(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;)Lcom/nd/android/u/contact/adapter/MySeniorAdapter;
aload 2
invokevirtual com/nd/android/u/contact/adapter/MySeniorAdapter/setData(Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/this$0 Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/MySeniorActivity/access$100(Lcom/nd/android/u/contact/activity/senior/MySeniorActivity;)Lcom/nd/android/u/contact/adapter/MySeniorAdapter;
invokevirtual com/nd/android/u/contact/adapter/MySeniorAdapter/notifyDataSetChanged()V
L0:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onProgressUpdate([Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 4
.end method

.method protected volatile synthetic onProgressUpdate([Ljava/lang/Object;)V
aload 0
aload 1
checkcast [Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
invokevirtual com/nd/android/u/contact/activity/senior/MySeniorActivity$GetMySeniorTask/onProgressUpdate([Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)V
return
.limit locals 2
.limit stack 2
.end method
