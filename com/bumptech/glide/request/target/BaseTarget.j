.bytecode 50.0
.class public synchronized abstract com/bumptech/glide/request/target/BaseTarget
.super java/lang/Object
.implements com/bumptech/glide/request/target/Target
.signature "<Z:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target<TZ;>;"

.field private 'request' Lcom/bumptech/glide/request/Request;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getRequest()Lcom/bumptech/glide/request/Request;
aload 0
getfield com/bumptech/glide/request/target/BaseTarget/request Lcom/bumptech/glide/request/Request;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onDestroy()V
return
.limit locals 1
.limit stack 0
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
return
.limit locals 3
.limit stack 0
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onStart()V
return
.limit locals 1
.limit stack 0
.end method

.method public onStop()V
return
.limit locals 1
.limit stack 0
.end method

.method public setRequest(Lcom/bumptech/glide/request/Request;)V
aload 0
aload 1
putfield com/bumptech/glide/request/target/BaseTarget/request Lcom/bumptech/glide/request/Request;
return
.limit locals 2
.limit stack 2
.end method
