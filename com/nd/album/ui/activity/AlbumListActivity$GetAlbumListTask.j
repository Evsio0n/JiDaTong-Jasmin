.bytecode 50.0
.class synchronized com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/ArrayList<Lcom/nd/album/bean/AlbumInfo;>;>;"
.inner class GetAlbumListTask inner com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask outer com/nd/album/ui/activity/AlbumListActivity

.field final synthetic 'this$0' Lcom/nd/album/ui/activity/AlbumListActivity;

.method <init>(Lcom/nd/album/ui/activity/AlbumListActivity;)V
aload 0
aload 1
putfield com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask/this$0 Lcom/nd/album/ui/activity/AlbumListActivity;
aload 0
invokespecial android/os/AsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask/doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
.signature "([Ljava/lang/Void;)Ljava/util/ArrayList<Lcom/nd/album/bean/AlbumInfo;>;"
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
new com/nd/album/com/AlbumCom
dup
invokespecial com/nd/album/com/AlbumCom/<init>()V
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask/this$0 Lcom/nd/album/ui/activity/AlbumListActivity;
invokestatic com/nd/album/ui/activity/AlbumListActivity/access$000(Lcom/nd/album/ui/activity/AlbumListActivity;)J
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask/this$0 Lcom/nd/album/ui/activity/AlbumListActivity;
invokestatic com/nd/album/ui/activity/AlbumListActivity/access$400(Lcom/nd/album/ui/activity/AlbumListActivity;)Z
invokevirtual com/nd/album/com/AlbumCom/getAlbumListInfo(JZ)Ljava/util/ArrayList;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 4
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/util/ArrayList
invokevirtual com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask/onPostExecute(Ljava/util/ArrayList;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/album/bean/AlbumInfo;>;)V"
aload 1
ifnonnull L0
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask/this$0 Lcom/nd/album/ui/activity/AlbumListActivity;
getstatic com/nd/album/R$string/alblst_update_list_err I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask/this$0 Lcom/nd/album/ui/activity/AlbumListActivity;
invokestatic com/nd/album/ui/activity/AlbumListActivity/access$500(Lcom/nd/album/ui/activity/AlbumListActivity;)V
return
L0:
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask/this$0 Lcom/nd/album/ui/activity/AlbumListActivity;
aload 1
invokestatic com/nd/album/ui/activity/AlbumListActivity/access$202(Lcom/nd/album/ui/activity/AlbumListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
pop
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask/this$0 Lcom/nd/album/ui/activity/AlbumListActivity;
invokestatic com/nd/album/ui/activity/AlbumListActivity/access$200(Lcom/nd/album/ui/activity/AlbumListActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L1
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask/this$0 Lcom/nd/album/ui/activity/AlbumListActivity;
getstatic com/nd/album/R$string/no_album I
invokestatic com/nd/album/ui/activity/AlbumListActivity/access$600(Lcom/nd/album/ui/activity/AlbumListActivity;I)V
return
L1:
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask/this$0 Lcom/nd/album/ui/activity/AlbumListActivity;
invokestatic com/nd/album/ui/activity/AlbumListActivity/access$700(Lcom/nd/album/ui/activity/AlbumListActivity;)V
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask/this$0 Lcom/nd/album/ui/activity/AlbumListActivity;
invokestatic com/nd/album/ui/activity/AlbumListActivity/access$800(Lcom/nd/album/ui/activity/AlbumListActivity;)Landroid/widget/GridView;
iconst_0
invokevirtual android/widget/GridView/setVisibility(I)V
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask/this$0 Lcom/nd/album/ui/activity/AlbumListActivity;
invokestatic com/nd/album/ui/activity/AlbumListActivity/access$900(Lcom/nd/album/ui/activity/AlbumListActivity;)Lcom/nd/album/ui/adapter/AlbumListAdapter;
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask/this$0 Lcom/nd/album/ui/activity/AlbumListActivity;
invokestatic com/nd/album/ui/activity/AlbumListActivity/access$200(Lcom/nd/album/ui/activity/AlbumListActivity;)Ljava/util/ArrayList;
invokevirtual com/nd/album/ui/adapter/AlbumListAdapter/setData(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask/this$0 Lcom/nd/album/ui/activity/AlbumListActivity;
invokestatic com/nd/album/ui/activity/AlbumListActivity/access$900(Lcom/nd/album/ui/activity/AlbumListActivity;)Lcom/nd/album/ui/adapter/AlbumListAdapter;
invokevirtual com/nd/album/ui/adapter/AlbumListAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity$GetAlbumListTask/this$0 Lcom/nd/album/ui/activity/AlbumListActivity;
invokestatic com/nd/album/ui/activity/AlbumListActivity/access$300(Lcom/nd/album/ui/activity/AlbumListActivity;)V
return
.limit locals 1
.limit stack 1
.end method
