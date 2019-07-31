.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/widget/TDGallery$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/backpacksystem/widget/TDGallery/onKeyUp(ILandroid/view/KeyEvent;)Z
.inner class inner com/nd/android/backpacksystem/widget/TDGallery$2

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/widget/TDGallery;

.method <init>(Lcom/nd/android/backpacksystem/widget/TDGallery;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/TDGallery$2/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$2/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/dispatchUnpress()V
return
.limit locals 1
.limit stack 1
.end method
