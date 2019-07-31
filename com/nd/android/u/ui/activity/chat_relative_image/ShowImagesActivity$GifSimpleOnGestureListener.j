.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$GifSimpleOnGestureListener
.super android/view/GestureDetector$SimpleOnGestureListener
.inner class private GifSimpleOnGestureListener inner com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$GifSimpleOnGestureListener outer com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity

.field public 'mGifImageView' Lcom/common/android/ui/gif/GifImageView;

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;

.method public <init>(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;Lcom/common/android/ui/gif/GifImageView;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$GifSimpleOnGestureListener/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
aload 0
invokespecial android/view/GestureDetector$SimpleOnGestureListener/<init>()V
aload 0
aload 2
putfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$GifSimpleOnGestureListener/mGifImageView Lcom/common/android/ui/gif/GifImageView;
return
.limit locals 3
.limit stack 2
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
ldc "debug"
ldc "onDoubleTap"
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$GifSimpleOnGestureListener/mGifImageView Lcom/common/android/ui/gif/GifImageView;
invokevirtual com/common/android/ui/gif/GifImageView/changeScale()V
aload 0
aload 1
invokespecial android/view/GestureDetector$SimpleOnGestureListener/onDoubleTap(Landroid/view/MotionEvent;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$GifSimpleOnGestureListener/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/finish()V
ldc "debug"
ldc "onSingleTapUp"
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
invokespecial android/view/GestureDetector$SimpleOnGestureListener/onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
ireturn
.limit locals 2
.limit stack 2
.end method
