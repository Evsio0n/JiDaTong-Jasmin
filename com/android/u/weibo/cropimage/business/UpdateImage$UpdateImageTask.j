.bytecode 50.0
.class synchronized com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
.inner class UpdateImageTask inner com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask outer com/android/u/weibo/cropimage/business/UpdateImage

.field final synthetic 'this$0' Lcom/android/u/weibo/cropimage/business/UpdateImage;

.method <init>(Lcom/android/u/weibo/cropimage/business/UpdateImage;)V
aload 0
aload 1
putfield com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/this$0 Lcom/android/u/weibo/cropimage/business/UpdateImage;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/this$0 Lcom/android/u/weibo/cropimage/business/UpdateImage;
invokestatic com/android/u/weibo/cropimage/business/UpdateImage/access$000(Lcom/android/u/weibo/cropimage/business/UpdateImage;)Landroid/graphics/Bitmap;
ifnull L0
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/this$0 Lcom/android/u/weibo/cropimage/business/UpdateImage;
invokevirtual com/android/u/weibo/cropimage/business/UpdateImage/updateHead()Z
ifne L0
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
L0:
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/this$0 Lcom/android/u/weibo/cropimage/business/UpdateImage;
invokestatic com/android/u/weibo/cropimage/business/UpdateImage/access$100(Lcom/android/u/weibo/cropimage/business/UpdateImage;)Landroid/graphics/Bitmap;
ifnull L1
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/this$0 Lcom/android/u/weibo/cropimage/business/UpdateImage;
invokevirtual com/android/u/weibo/cropimage/business/UpdateImage/updateShow()Z
ifne L1
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
L1:
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 1
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/this$0 Lcom/android/u/weibo/cropimage/business/UpdateImage;
invokestatic com/android/u/weibo/cropimage/business/UpdateImage/access$000(Lcom/android/u/weibo/cropimage/business/UpdateImage;)Landroid/graphics/Bitmap;
ifnull L0
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/this$0 Lcom/android/u/weibo/cropimage/business/UpdateImage;
invokestatic com/android/u/weibo/cropimage/business/UpdateImage/access$000(Lcom/android/u/weibo/cropimage/business/UpdateImage;)Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L0
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/this$0 Lcom/android/u/weibo/cropimage/business/UpdateImage;
invokestatic com/android/u/weibo/cropimage/business/UpdateImage/access$000(Lcom/android/u/weibo/cropimage/business/UpdateImage;)Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/recycle()V
L0:
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/this$0 Lcom/android/u/weibo/cropimage/business/UpdateImage;
invokestatic com/android/u/weibo/cropimage/business/UpdateImage/access$100(Lcom/android/u/weibo/cropimage/business/UpdateImage;)Landroid/graphics/Bitmap;
ifnull L1
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/this$0 Lcom/android/u/weibo/cropimage/business/UpdateImage;
invokestatic com/android/u/weibo/cropimage/business/UpdateImage/access$100(Lcom/android/u/weibo/cropimage/business/UpdateImage;)Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L1
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/this$0 Lcom/android/u/weibo/cropimage/business/UpdateImage;
invokestatic com/android/u/weibo/cropimage/business/UpdateImage/access$100(Lcom/android/u/weibo/cropimage/business/UpdateImage;)Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/recycle()V
L1:
invokestatic android/os/Message/obtain()Landroid/os/Message;
astore 2
aload 1
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L2
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/this$0 Lcom/android/u/weibo/cropimage/business/UpdateImage;
invokestatic com/android/u/weibo/cropimage/business/UpdateImage/access$200(Lcom/android/u/weibo/cropimage/business/UpdateImage;)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 1
aload 1
iconst_0
invokevirtual com/product/android/business/login/BindUser/setSysavatar(I)V
aload 1
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/updateBindUserHeadInfo(Lcom/product/android/business/login/BindUser;)V
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/this$0 Lcom/android/u/weibo/cropimage/business/UpdateImage;
invokestatic com/android/u/weibo/cropimage/business/UpdateImage/access$300(Lcom/android/u/weibo/cropimage/business/UpdateImage;)Landroid/app/Activity;
getstatic com/android/u/weibo/R$string/header_pic_upload_success I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 2
iconst_1
putfield android/os/Message/what I
L3:
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/this$0 Lcom/android/u/weibo/cropimage/business/UpdateImage;
invokestatic com/android/u/weibo/cropimage/business/UpdateImage/access$400(Lcom/android/u/weibo/cropimage/business/UpdateImage;)Landroid/os/Handler;
ifnull L4
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/this$0 Lcom/android/u/weibo/cropimage/business/UpdateImage;
invokestatic com/android/u/weibo/cropimage/business/UpdateImage/access$400(Lcom/android/u/weibo/cropimage/business/UpdateImage;)Landroid/os/Handler;
aload 2
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L4:
return
L2:
aload 0
getfield com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/this$0 Lcom/android/u/weibo/cropimage/business/UpdateImage;
invokestatic com/android/u/weibo/cropimage/business/UpdateImage/access$300(Lcom/android/u/weibo/cropimage/business/UpdateImage;)Landroid/app/Activity;
getstatic com/android/u/weibo/R$string/header_pic_upload_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 2
iconst_2
putfield android/os/Message/what I
goto L3
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Boolean
invokevirtual com/android/u/weibo/cropimage/business/UpdateImage$UpdateImageTask/onPostExecute(Ljava/lang/Boolean;)V
return
.limit locals 2
.limit stack 2
.end method
