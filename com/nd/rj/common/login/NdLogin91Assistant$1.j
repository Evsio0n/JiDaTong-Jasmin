.bytecode 50.0
.class synchronized com/nd/rj/common/login/NdLogin91Assistant$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/rj/common/login/NdLogin91Assistant/getDrawableFromStream(Ljava/io/InputStream;I)V
.inner class inner com/nd/rj/common/login/NdLogin91Assistant$1

.field final synthetic 'this$0' Lcom/nd/rj/common/login/NdLogin91Assistant;

.method <init>(Lcom/nd/rj/common/login/NdLogin91Assistant;)V
aload 0
aload 1
putfield com/nd/rj/common/login/NdLogin91Assistant$1/this$0 Lcom/nd/rj/common/login/NdLogin91Assistant;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/rj/common/login/NdLogin91Assistant$1/this$0 Lcom/nd/rj/common/login/NdLogin91Assistant;
invokestatic com/nd/rj/common/login/NdLogin91Assistant/access$000(Lcom/nd/rj/common/login/NdLogin91Assistant;)Landroid/graphics/drawable/BitmapDrawable;
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/onGetCheckcodeFinish(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 1
.limit stack 1
.end method
