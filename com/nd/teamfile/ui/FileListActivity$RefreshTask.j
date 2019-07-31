.bytecode 50.0
.class synchronized com/nd/teamfile/ui/FileListActivity$RefreshTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/nd/teamfile/sdk/type/FileInfoList;>;"
.inner class private RefreshTask inner com/nd/teamfile/ui/FileListActivity$RefreshTask outer com/nd/teamfile/ui/FileListActivity

.field private 'dialog' Landroid/app/ProgressDialog;

.field private 'force' Z

.field final synthetic 'this$0' Lcom/nd/teamfile/ui/FileListActivity;

.field private 'totalSize' J

.field private 'usageSize' J

.method public <init>(Lcom/nd/teamfile/ui/FileListActivity;Z)V
aload 0
aload 1
putfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
iload 2
putfield com/nd/teamfile/ui/FileListActivity$RefreshTask/force Z
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/nd/teamfile/sdk/type/FileInfoList;
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$700(Lcom/nd/teamfile/ui/FileListActivity;)Z
ifne L0
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
getstatic com/nd/teamfile/Env/gid J
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10314
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/util/ArrayList
putstatic com/nd/teamfile/Env/founderUids Ljava/util/ArrayList;
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
iconst_1
invokestatic com/nd/teamfile/ui/FileListActivity/access$702(Lcom/nd/teamfile/ui/FileListActivity;Z)Z
pop
L0:
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$200(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/manager/TeamFileManager;
getstatic com/nd/teamfile/Env/gid J
getstatic com/nd/teamfile/Env/category I
invokevirtual com/nd/teamfile/manager/TeamFileManager/getServerCapacity(JI)Lcom/nd/teamfile/sdk/type/ServerCapacity;
astore 1
aload 1
ifnull L1
aload 0
aload 1
invokevirtual com/nd/teamfile/sdk/type/ServerCapacity/getCapacity()J
putfield com/nd/teamfile/ui/FileListActivity$RefreshTask/totalSize J
aload 0
aload 1
invokevirtual com/nd/teamfile/sdk/type/ServerCapacity/getUsedSize()J
putfield com/nd/teamfile/ui/FileListActivity$RefreshTask/usageSize J
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$200(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/manager/TeamFileManager;
getstatic com/nd/teamfile/Env/gid J
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/force Z
getstatic com/nd/teamfile/Env/category I
invokevirtual com/nd/teamfile/manager/TeamFileManager/getFileInfoList(JZI)Lcom/nd/teamfile/sdk/type/FileInfoList;
areturn
L1:
ldc "FileListActivity"
ldc "capacity is null"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
.limit locals 2
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/teamfile/ui/FileListActivity$RefreshTask/doInBackground([Ljava/lang/Void;)Lcom/nd/teamfile/sdk/type/FileInfoList;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/teamfile/sdk/type/FileInfoList;)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/totalSize J
lconst_0
lcmp
ifeq L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/usageSize J
invokestatic com/nd/teamfile/util/Util/getSize(J)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/totalSize J
invokestatic com/nd/teamfile/util/Util/getSize(J)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$400(Lcom/nd/teamfile/ui/FileListActivity;)Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$500(Lcom/nd/teamfile/ui/FileListActivity;)Landroid/widget/ProgressBar;
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/usageSize J
ldc2_w 100L
lmul
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/totalSize J
ldiv
l2i
invokevirtual android/widget/ProgressBar/setProgress(I)V
L1:
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$300(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/ui/FileListAdapter;
aload 1
invokevirtual com/nd/teamfile/ui/FileListAdapter/setData(Lcom/nd/teamfile/sdk/type/FileInfoList;)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$800(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/service/FileService;
invokevirtual com/nd/teamfile/service/FileService/getMapDownloadProgress()Ljava/util/HashMap;
invokevirtual java/util/HashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L2:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$300(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/ui/FileListAdapter;
aload 3
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
invokevirtual com/nd/teamfile/ui/FileListAdapter/setDonwloadProgress(Ljava/lang/String;I)Z
pop
goto L2
L0:
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$400(Lcom/nd/teamfile/ui/FileListActivity;)Landroid/widget/TextView;
ldc "0/0"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$500(Lcom/nd/teamfile/ui/FileListActivity;)Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setProgress(I)V
goto L1
L3:
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$300(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/ui/FileListAdapter;
invokevirtual com/nd/teamfile/ui/FileListAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$900(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
aload 1
ifnull L4
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfoList/size()I
ifne L5
L4:
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$600(Lcom/nd/teamfile/ui/FileListActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L6:
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/dialog Landroid/app/ProgressDialog;
ifnull L7
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
aload 0
aconst_null
putfield com/nd/teamfile/ui/FileListActivity$RefreshTask/dialog Landroid/app/ProgressDialog;
L7:
aload 0
aload 1
invokespecial android/os/AsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L5:
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$600(Lcom/nd/teamfile/ui/FileListActivity;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L6
.limit locals 4
.limit stack 5
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/nd/teamfile/sdk/type/FileInfoList
invokevirtual com/nd/teamfile/ui/FileListActivity$RefreshTask/onPostExecute(Lcom/nd/teamfile/sdk/type/FileInfoList;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/manager/TeamFileManager/getInstance(Landroid/content/Context;)Lcom/nd/teamfile/manager/TeamFileManager;
invokestatic com/nd/teamfile/ui/FileListActivity/access$202(Lcom/nd/teamfile/ui/FileListActivity;Lcom/nd/teamfile/manager/TeamFileManager;)Lcom/nd/teamfile/manager/TeamFileManager;
pop
aload 0
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
getstatic com/nd/teamfile/R$string/in_the_process I
invokevirtual com/nd/teamfile/ui/FileListActivity/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/teamfile/ui/FileListActivity$RefreshTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
getstatic com/nd/teamfile/R$string/wait_for_getting_shared_data I
invokevirtual com/nd/teamfile/ui/FileListActivity/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/teamfile/ui/FileListActivity$RefreshTask/dialog Landroid/app/ProgressDialog;
aload 0
invokespecial android/os/AsyncTask/onPreExecute()V
return
.limit locals 1
.limit stack 5
.end method
