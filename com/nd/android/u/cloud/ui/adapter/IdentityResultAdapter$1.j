.bytecode 50.0
.class synchronized com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$1
.super java/lang/Object
.implements com/product/android/business/headImage/ProfileHeadImageCacheCallback
.enclosing method com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter
.inner class inner com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/ui/adapter/IdentityResultAdapter;

.method <init>(Lcom/nd/android/u/cloud/ui/adapter/IdentityResultAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$1/this$0 Lcom/nd/android/u/cloud/ui/adapter/IdentityResultAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public refresh(Ljava/lang/String;ZLandroid/graphics/Bitmap;)V
aload 0
getfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$1/this$0 Lcom/nd/android/u/cloud/ui/adapter/IdentityResultAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter/notifyDataSetChanged()V
return
.limit locals 4
.limit stack 1
.end method
