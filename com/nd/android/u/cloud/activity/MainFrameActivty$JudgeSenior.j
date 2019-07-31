.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MainFrameActivty$JudgeSenior
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
.inner class JudgeSenior inner com/nd/android/u/cloud/activity/MainFrameActivty$JudgeSenior outer com/nd/android/u/cloud/activity/MainFrameActivty

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MainFrameActivty;

.method <init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MainFrameActivty$JudgeSenior/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
iconst_0
istore 2
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getSeniorSystemCom()Lcom/nd/android/u/contact/com/OapSeniorSystemCom;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/com/OapSeniorSystemCom/isAlreadyBeanSenior(J)Z
istore 3
L1:
iload 3
istore 2
L3:
iload 2
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L3
.limit locals 4
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty$JudgeSenior/doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
aload 1
invokevirtual java/lang/Boolean/booleanValue()Z
putstatic com/nd/android/u/contact/business/ContactGlobalVariable/gHasBeanSenior Z
aload 1
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$JudgeSenior/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveHasBeanSenior()V
L0:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Boolean
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty$JudgeSenior/onPostExecute(Ljava/lang/Boolean;)V
return
.limit locals 2
.limit stack 2
.end method
