.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MainFrameActivty$GetStudentCreateTime
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Long;>;"
.inner class GetStudentCreateTime inner com/nd/android/u/cloud/activity/MainFrameActivty$GetStudentCreateTime outer com/nd/android/u/cloud/activity/MainFrameActivty

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MainFrameActivty;

.method <init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MainFrameActivty$GetStudentCreateTime/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
lconst_0
lstore 2
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getSeniorSystemCom()Lcom/nd/android/u/contact/com/OapSeniorSystemCom;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/com/OapSeniorSystemCom/getStudentCreateTime(J)J
lstore 4
L1:
lload 4
lstore 2
L3:
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L3
.limit locals 6
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty$GetStudentCreateTime/doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$GetStudentCreateTime/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
aload 1
invokevirtual java/lang/Long/longValue()J
invokestatic com/nd/android/u/cloud/activity/MainFrameActivty/access$100(Lcom/nd/android/u/cloud/activity/MainFrameActivty;J)V
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Long
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty$GetStudentCreateTime/onPostExecute(Ljava/lang/Long;)V
return
.limit locals 2
.limit stack 2
.end method
