.bytecode 50.0
.class synchronized com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/updateUI()V
.inner class inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$1
.inner class inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$1$1

.field final synthetic 'this$0' Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;

.method <init>(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)V
aload 0
aload 1
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$1/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
invokestatic com/common/android/ui/LocalAlbum/LocalImageController/getInstance()Lcom/common/android/ui/LocalAlbum/LocalImageController;
invokevirtual com/common/android/ui/LocalAlbum/LocalImageController/getMediaFiles()Ljava/util/ArrayList;
astore 1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$1/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
aload 1
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$000(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Ljava/util/List;)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$1/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$100(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifne L0
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$1/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
aload 1
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$200(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Ljava/util/List;)V
L0:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$1/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
new com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$1$1
dup
aload 0
aload 1
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$1$1/<init>(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$1;Ljava/util/ArrayList;)V
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 2
.limit stack 5
.end method
