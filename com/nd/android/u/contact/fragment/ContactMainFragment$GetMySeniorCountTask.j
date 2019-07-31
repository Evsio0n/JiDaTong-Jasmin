.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/ContactMainFragment$GetMySeniorCountTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Integer;>;"
.inner class GetMySeniorCountTask inner com/nd/android/u/contact/fragment/ContactMainFragment$GetMySeniorCountTask outer com/nd/android/u/contact/fragment/ContactMainFragment

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/ContactMainFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/ContactMainFragment$GetMySeniorCountTask/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
iconst_0
istore 2
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getSeniorSystemCom()Lcom/nd/android/u/contact/com/OapSeniorSystemCom;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/com/OapSeniorSystemCom/getMySeniorCount(J)I
istore 3
L1:
iload 3
istore 2
L3:
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
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
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment$GetMySeniorCountTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$GetMySeniorCountTask/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokestatic com/nd/android/u/contact/fragment/ContactMainFragment/access$100(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
astore 3
aload 1
invokevirtual java/lang/Integer/intValue()I
ifne L0
iconst_1
istore 2
L1:
aload 3
iload 2
invokevirtual com/nd/android/u/contact/adapter/XYFriendGroupAdapter/setNoSeniorData(Z)V
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L0:
iconst_0
istore 2
goto L1
.limit locals 4
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Integer
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment$GetMySeniorCountTask/onPostExecute(Ljava/lang/Integer;)V
return
.limit locals 2
.limit stack 2
.end method
