.bytecode 50.0
.class synchronized com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/addFootPhoto(Ljava/lang/String;)V
.inner class inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$2

.field final synthetic 'this$0' Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;

.method <init>(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)V
aload 0
aload 1
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$2/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$2/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mFootScrollView Landroid/widget/HorizontalScrollView;
bipush 66
invokevirtual android/widget/HorizontalScrollView/fullScroll(I)Z
pop
return
.limit locals 1
.limit stack 2
.end method
