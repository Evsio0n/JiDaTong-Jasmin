.bytecode 50.0
.class synchronized com/product/android/business/switchUser/SwitchUserReloadManager$RefreshTask
.super com/common/android/utils/concurrent/NdCacheAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdCacheAsyncTask<Lcom/product/android/business/switchUser/TabUIRefresh;Ljava/lang/Void;Lcom/product/android/business/switchUser/TabUIRefresh;>;"
.inner class private static RefreshTask inner com/product/android/business/switchUser/SwitchUserReloadManager$RefreshTask outer com/product/android/business/switchUser/SwitchUserReloadManager

.field private final 'mRef' Ljava/lang/ref/SoftReference; signature "Ljava/lang/ref/SoftReference<Landroid/app/Activity;>;"

.method public <init>(Landroid/app/Activity;)V
aload 0
invokespecial com/common/android/utils/concurrent/NdCacheAsyncTask/<init>()V
aload 0
new java/lang/ref/SoftReference
dup
aload 1
invokespecial java/lang/ref/SoftReference/<init>(Ljava/lang/Object;)V
putfield com/product/android/business/switchUser/SwitchUserReloadManager$RefreshTask/mRef Ljava/lang/ref/SoftReference;
return
.limit locals 2
.limit stack 4
.end method

.method protected transient doInBackground([Lcom/product/android/business/switchUser/TabUIRefresh;)Lcom/product/android/business/switchUser/TabUIRefresh;
aload 1
iconst_0
aaload
astore 1
aload 1
invokeinterface com/product/android/business/switchUser/TabUIRefresh/loadDataToMemory()V 0
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Lcom/product/android/business/switchUser/TabUIRefresh;
invokevirtual com/product/android/business/switchUser/SwitchUserReloadManager$RefreshTask/doInBackground([Lcom/product/android/business/switchUser/TabUIRefresh;)Lcom/product/android/business/switchUser/TabUIRefresh;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/product/android/business/switchUser/TabUIRefresh;)V
getstatic com/product/android/business/switchUser/SwitchUserReloadManager/INSTANCE Lcom/product/android/business/switchUser/SwitchUserReloadManager;
aload 1
invokeinterface com/product/android/business/switchUser/TabUIRefresh/getTabIdentifier()Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier; 0
iconst_0
invokevirtual com/product/android/business/switchUser/SwitchUserReloadManager/setReloadFlag(Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;Z)V
aload 0
getfield com/product/android/business/switchUser/SwitchUserReloadManager$RefreshTask/mRef Ljava/lang/ref/SoftReference;
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/product/android/business/switchUser/SwitchUserReloadManager$RefreshTask/mRef Ljava/lang/ref/SoftReference;
invokevirtual java/lang/ref/SoftReference/get()Ljava/lang/Object;
checkcast android/app/Activity
astore 2
aload 2
ifnull L1
aload 2
invokevirtual android/app/Activity/isFinishing()Z
ifne L1
aload 1
invokeinterface com/product/android/business/switchUser/TabUIRefresh/refreshWhenSwitchUser()V 0
return
.limit locals 3
.limit stack 3
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/product/android/business/switchUser/TabUIRefresh
invokevirtual com/product/android/business/switchUser/SwitchUserReloadManager$RefreshTask/onPostExecute(Lcom/product/android/business/switchUser/TabUIRefresh;)V
return
.limit locals 2
.limit stack 2
.end method
