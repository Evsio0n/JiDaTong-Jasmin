.bytecode 50.0
.class synchronized com/nd/android/u/contact/adapter/TreeAdapter$1
.super java/lang/Object
.implements com/product/android/business/headImage/ProfileHeadImageCacheCallback
.enclosing method com/nd/android/u/contact/adapter/TreeAdapter
.inner class inner com/nd/android/u/contact/adapter/TreeAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/adapter/TreeAdapter;

.method <init>(Lcom/nd/android/u/contact/adapter/TreeAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/TreeAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/TreeAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public refresh(Ljava/lang/String;ZLandroid/graphics/Bitmap;)V
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/TreeAdapter;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/notifyDataSetChanged()V
return
.limit locals 4
.limit stack 1
.end method
