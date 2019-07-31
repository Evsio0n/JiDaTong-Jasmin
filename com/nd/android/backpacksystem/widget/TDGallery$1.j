.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/widget/TDGallery$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/backpacksystem/widget/TDGallery
.inner class inner com/nd/android/backpacksystem/widget/TDGallery$1

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/widget/TDGallery;

.method <init>(Lcom/nd/android/backpacksystem/widget/TDGallery;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/TDGallery$1/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$1/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
iconst_0
invokestatic com/nd/android/backpacksystem/widget/TDGallery/access$002(Lcom/nd/android/backpacksystem/widget/TDGallery;Z)Z
pop
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$1/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/selectionChanged()V
return
.limit locals 1
.limit stack 2
.end method
