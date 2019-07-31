.bytecode 50.0
.class synchronized com/nd/album/ui/activity/AlbumBrowserActivity$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/album/ui/activity/AlbumBrowserActivity/initEvent()V
.inner class inner com/nd/album/ui/activity/AlbumBrowserActivity$1

.field final synthetic 'this$0' Lcom/nd/album/ui/activity/AlbumBrowserActivity;

.method <init>(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)V
aload 0
aload 1
putfield com/nd/album/ui/activity/AlbumBrowserActivity$1/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$1/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$400(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Ljava/util/ArrayList;
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/album/Image
ifnonnull L0
return
L0:
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$1/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$900(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Z
ifeq L1
new android/content/Intent
dup
ldc "android.nd.action.AlbumPanorama"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "albumlist"
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$1/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$400(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Ljava/util/ArrayList;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 1
ldc "image_position"
iload 3
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "oap_id"
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$1/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$100(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 1
ldc "sid"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "isMy"
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$1/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$600(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$1/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
aload 1
invokestatic com/nd/android/u/AlbumCallOtherModel/toPanonamaGL(Landroid/app/Activity;Landroid/content/Intent;)V
return
L1:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$1/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
ldc com/nd/album/ui/activity/PictureFragmentActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 1
ldc "position"
iload 3
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "albumlist"
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$1/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$400(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)Ljava/util/ArrayList;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 1
ldc "oap_id"
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$1/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
invokestatic com/nd/album/ui/activity/AlbumBrowserActivity/access$100(Lcom/nd/album/ui/activity/AlbumBrowserActivity;)J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/nd/album/ui/activity/AlbumBrowserActivity$1/this$0 Lcom/nd/album/ui/activity/AlbumBrowserActivity;
aload 1
invokevirtual com/nd/album/ui/activity/AlbumBrowserActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 6
.limit stack 4
.end method
