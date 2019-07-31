.bytecode 50.0
.class synchronized com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;>;"
.inner class GetImageDateTask inner com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask outer com/nd/album/ui/activity/AlbumBrowserActivity

.field final synthetic 'this$0' Lcom/nd/album/ui/activity/AlbumBrowserActivity;

.method <init>(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)V
aload 0
aload 1
putfield com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
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
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask/doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
.signature "([Ljava/lang/Void;)Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
L0:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$000(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Lcom/nd/album/bean/AlbumInfo;
ifnull L1
getstatic com/nd/album/business/AlbumManager/INSTANCE Lcom/nd/album/business/AlbumManager;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$000(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Lcom/nd/album/bean/AlbumInfo;
getfield com/nd/album/bean/AlbumInfo/mAlbumId J
invokevirtual com/nd/album/business/AlbumManager/getNewAlbumImageListFromNet(J)Ljava/util/ArrayList;
areturn
L1:
getstatic com/nd/album/business/AlbumManager/INSTANCE Lcom/nd/album/business/AlbumManager;
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$100(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)J
invokevirtual com/nd/album/business/AlbumManager/getNewUserImageListFromNet(J)Ljava/util/ArrayList;
astore 1
L3:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/util/ArrayList
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask/onPostExecute(Ljava/util/ArrayList;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;)V"
aload 1
ifnonnull L0
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
getstatic com/nd/album/R$string/alblst_update_err I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$300(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)V
L1:
return
L0:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
aload 1
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$402(Lcom/nd/album/ui/activity/AlbumBrowserActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
pop
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$500(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$600(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Z
ifeq L1
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
iconst_0
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$700(Lcom/nd/album/ui/activity/AlbumBrowserActivity;I)V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$000(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Lcom/nd/album/bean/AlbumInfo;
ifnull L1
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$000(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Lcom/nd/album/bean/AlbumInfo;
invokevirtual com/nd/album/bean/AlbumInfo/isFullViewAlbum()Z
ifeq L1
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$800(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$GetImageDateTask/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$200(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)V
return
.limit locals 1
.limit stack 1
.end method
