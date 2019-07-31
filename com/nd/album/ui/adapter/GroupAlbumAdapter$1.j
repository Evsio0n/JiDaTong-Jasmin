.bytecode 50.0
.class synchronized com/nd/album/ui/adapter/GroupAlbumAdapter$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/album/ui/adapter/GroupAlbumAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/album/ui/adapter/GroupAlbumAdapter$1

.field final synthetic 'this$0' Lcom/nd/album/ui/adapter/GroupAlbumAdapter;

.field final synthetic 'val$position' I

.method <init>(Lcom/nd/album/ui/adapter/GroupAlbumAdapter;I)V
aload 0
aload 1
putfield com/nd/album/ui/adapter/GroupAlbumAdapter$1/this$0 Lcom/nd/album/ui/adapter/GroupAlbumAdapter;
aload 0
iload 2
putfield com/nd/album/ui/adapter/GroupAlbumAdapter$1/val$position I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter$1/this$0 Lcom/nd/album/ui/adapter/GroupAlbumAdapter;
invokestatic com/nd/album/ui/adapter/GroupAlbumAdapter/access$000(Lcom/nd/album/ui/adapter/GroupAlbumAdapter;)Landroid/content/Context;
ldc com/nd/album/ui/activity/PictureFragmentActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 1
ldc "position"
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter$1/this$0 Lcom/nd/album/ui/adapter/GroupAlbumAdapter;
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter$1/val$position I
iload 3
invokestatic com/nd/album/ui/adapter/GroupAlbumAdapter/access$100(Lcom/nd/album/ui/adapter/GroupAlbumAdapter;II)I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "albumlist"
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter$1/this$0 Lcom/nd/album/ui/adapter/GroupAlbumAdapter;
invokestatic com/nd/album/ui/adapter/GroupAlbumAdapter/access$200(Lcom/nd/album/ui/adapter/GroupAlbumAdapter;)Ljava/util/ArrayList;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 1
ldc "category"
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter$1/this$0 Lcom/nd/album/ui/adapter/GroupAlbumAdapter;
invokestatic com/nd/album/ui/adapter/GroupAlbumAdapter/access$300(Lcom/nd/album/ui/adapter/GroupAlbumAdapter;)I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "qid"
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter$1/this$0 Lcom/nd/album/ui/adapter/GroupAlbumAdapter;
invokestatic com/nd/album/ui/adapter/GroupAlbumAdapter/access$400(Lcom/nd/album/ui/adapter/GroupAlbumAdapter;)J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/nd/album/ui/adapter/GroupAlbumAdapter$1/this$0 Lcom/nd/album/ui/adapter/GroupAlbumAdapter;
invokestatic com/nd/album/ui/adapter/GroupAlbumAdapter/access$000(Lcom/nd/album/ui/adapter/GroupAlbumAdapter;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 6
.limit stack 5
.end method
