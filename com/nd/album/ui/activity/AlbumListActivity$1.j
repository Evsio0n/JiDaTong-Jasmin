.bytecode 50.0
.class synchronized com/nd/album/ui/activity/AlbumListActivity$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/album/ui/activity/AlbumListActivity
.inner class inner com/nd/album/ui/activity/AlbumListActivity$1

.field final synthetic 'this$0' Lcom/nd/album/ui/activity/AlbumListActivity;

.method <init>(Lcom/nd/album/ui/activity/AlbumListActivity;)V
aload 0
aload 1
putfield com/nd/album/ui/activity/AlbumListActivity$1/this$0 Lcom/nd/album/ui/activity/AlbumListActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
new android/content/Intent
dup
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity$1/this$0 Lcom/nd/album/ui/activity/AlbumListActivity;
ldc com/nd/album/ui/activity/AlbumBrowserActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "OAP_ID"
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity$1/this$0 Lcom/nd/album/ui/activity/AlbumListActivity;
invokestatic com/nd/album/ui/activity/AlbumListActivity/access$000(Lcom/nd/album/ui/activity/AlbumListActivity;)J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 1
ldc "UAP_ID"
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity$1/this$0 Lcom/nd/album/ui/activity/AlbumListActivity;
invokestatic com/nd/album/ui/activity/AlbumListActivity/access$100(Lcom/nd/album/ui/activity/AlbumListActivity;)J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 1
ldc "ALBUM_INFO"
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity$1/this$0 Lcom/nd/album/ui/activity/AlbumListActivity;
invokestatic com/nd/album/ui/activity/AlbumListActivity/access$200(Lcom/nd/album/ui/activity/AlbumListActivity;)Ljava/util/ArrayList;
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/io/Serializable
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/album/ui/activity/AlbumListActivity$1/this$0 Lcom/nd/album/ui/activity/AlbumListActivity;
aload 1
sipush 4097
invokevirtual com/nd/album/ui/activity/AlbumListActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 6
.limit stack 4
.end method
