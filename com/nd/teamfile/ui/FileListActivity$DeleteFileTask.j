.bytecode 50.0
.class synchronized com/nd/teamfile/ui/FileListActivity$DeleteFileTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Lcom/nd/teamfile/sdk/type/FileInfo;Ljava/lang/Void;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;>;"
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "UseSparseArrays" 
.end annotation
.inner class private DeleteFileTask inner com/nd/teamfile/ui/FileListActivity$DeleteFileTask outer com/nd/teamfile/ui/FileListActivity

.field private 'dialog' Landroid/app/ProgressDialog;

.field private 'fileList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/teamfile/sdk/type/FileInfo;>;"

.field final synthetic 'this$0' Lcom/nd/teamfile/ui/FileListActivity;

.field private 'totalSize' J

.field private 'usageSize' J

.method private <init>(Lcom/nd/teamfile/ui/FileListActivity;)V
aload 0
aload 1
putfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/fileList Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 3
.end method

.method synthetic <init>(Lcom/nd/teamfile/ui/FileListActivity;Lcom/nd/teamfile/ui/FileListActivity$1;)V
aload 0
aload 1
invokespecial com/nd/teamfile/ui/FileListActivity$DeleteFileTask/<init>(Lcom/nd/teamfile/ui/FileListActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Lcom/nd/teamfile/sdk/type/FileInfo;
invokevirtual com/nd/teamfile/ui/FileListActivity$DeleteFileTask/doInBackground([Lcom/nd/teamfile/sdk/type/FileInfo;)Ljava/util/HashMap;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Lcom/nd/teamfile/sdk/type/FileInfo;)Ljava/util/HashMap;
.signature "([Lcom/nd/teamfile/sdk/type/FileInfo;)Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 5
aload 1
arraylength
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 1
iload 2
aaload
astore 6
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$200(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/manager/TeamFileManager;
aload 6
invokevirtual com/nd/teamfile/manager/TeamFileManager/deleteFile(Lcom/nd/teamfile/sdk/type/FileInfo;)Z
istore 4
aload 5
aload 6
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getKeyId()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
iload 4
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/fileList Ljava/util/ArrayList;
aload 6
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$200(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/manager/TeamFileManager;
getstatic com/nd/teamfile/Env/gid J
getstatic com/nd/teamfile/Env/category I
invokevirtual com/nd/teamfile/manager/TeamFileManager/getServerCapacity(JI)Lcom/nd/teamfile/sdk/type/ServerCapacity;
astore 1
aload 1
ifnull L2
aload 0
aload 1
invokevirtual com/nd/teamfile/sdk/type/ServerCapacity/getCapacity()J
putfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/totalSize J
aload 0
aload 1
invokevirtual com/nd/teamfile/sdk/type/ServerCapacity/getUsedSize()J
putfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/usageSize J
L2:
aload 5
areturn
.limit locals 7
.limit stack 4
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/util/HashMap
invokevirtual com/nd/teamfile/ui/FileListActivity$DeleteFileTask/onPostExecute(Ljava/util/HashMap;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/util/HashMap;)V
.signature "(Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;)V"
aload 1
invokevirtual java/util/HashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L2
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$300(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/ui/FileListAdapter;
aload 3
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
invokevirtual com/nd/teamfile/ui/FileListAdapter/deleteItem(I)V
goto L0
L2:
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
getstatic com/nd/teamfile/R$string/delete_fail I
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
goto L0
L1:
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/totalSize J
lconst_0
lcmp
ifeq L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/usageSize J
invokestatic com/nd/teamfile/util/Util/getSize(J)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/totalSize J
invokestatic com/nd/teamfile/util/Util/getSize(J)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$400(Lcom/nd/teamfile/ui/FileListActivity;)Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$500(Lcom/nd/teamfile/ui/FileListActivity;)Landroid/widget/ProgressBar;
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/usageSize J
ldc2_w 100L
lmul
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/totalSize J
ldiv
l2i
invokevirtual android/widget/ProgressBar/setProgress(I)V
L3:
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$300(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/ui/FileListAdapter;
invokevirtual com/nd/teamfile/ui/FileListAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$300(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/ui/FileListAdapter;
invokevirtual com/nd/teamfile/ui/FileListAdapter/getCount()I
ifne L4
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$600(Lcom/nd/teamfile/ui/FileListActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L5:
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/dialog Landroid/app/ProgressDialog;
ifnull L6
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
aload 0
aconst_null
putfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/dialog Landroid/app/ProgressDialog;
L6:
aload 0
aload 1
invokespecial android/os/AsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L4:
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$600(Lcom/nd/teamfile/ui/FileListActivity;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L5
.limit locals 4
.limit stack 5
.end method

.method protected onPreExecute()V
aload 0
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
getstatic com/nd/teamfile/R$string/in_the_process I
invokevirtual com/nd/teamfile/ui/FileListActivity/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/this$0 Lcom/nd/teamfile/ui/FileListActivity;
getstatic com/nd/teamfile/R$string/deleteing I
invokevirtual com/nd/teamfile/ui/FileListActivity/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/teamfile/ui/FileListActivity$DeleteFileTask/dialog Landroid/app/ProgressDialog;
aload 0
invokespecial android/os/AsyncTask/onPreExecute()V
return
.limit locals 1
.limit stack 5
.end method
