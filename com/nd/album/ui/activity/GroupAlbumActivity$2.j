.bytecode 50.0
.class synchronized com/nd/album/ui/activity/GroupAlbumActivity$2
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/album/ui/activity/GroupAlbumActivity/showPickPhotoWayDlg()V
.inner class inner com/nd/album/ui/activity/GroupAlbumActivity$2

.field final synthetic 'this$0' Lcom/nd/album/ui/activity/GroupAlbumActivity;

.method <init>(Lcom/nd/album/ui/activity/GroupAlbumActivity;)V
aload 0
aload 1
putfield com/nd/album/ui/activity/GroupAlbumActivity$2/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
iload 2
tableswitch 0
L0
L1
default : L2
L2:
return
L0:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$2/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$000(Lcom/nd/album/ui/activity/GroupAlbumActivity;)Lcom/nd/album/business/PickedCameraPhoto;
invokevirtual com/nd/album/business/PickedCameraPhoto/openImageCaptureMenu()V
return
L1:
aload 0
getfield com/nd/album/ui/activity/GroupAlbumActivity$2/this$0 Lcom/nd/album/ui/activity/GroupAlbumActivity;
invokestatic com/nd/album/ui/activity/GroupAlbumActivity/access$000(Lcom/nd/album/ui/activity/GroupAlbumActivity;)Lcom/nd/album/business/PickedCameraPhoto;
invokevirtual com/nd/album/business/PickedCameraPhoto/openPhotoLibraryMenu()V
return
.limit locals 3
.limit stack 1
.end method
