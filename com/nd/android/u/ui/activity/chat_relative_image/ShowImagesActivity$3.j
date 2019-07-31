.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$3
.super java/lang/Object
.implements android/support/v4/view/ViewPager$OnPageChangeListener
.enclosing method com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/initComponent()V
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;

.method <init>(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$3/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPageScrollStateChanged(I)V
return
.limit locals 2
.limit stack 0
.end method

.method public onPageScrolled(IFI)V
return
.limit locals 4
.limit stack 0
.end method

.method public onPageSelected(I)V
ldc "showImagesActivity"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "onPageSelected "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/i(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$3/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
iload 1
invokestatic com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/access$002(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;I)I
pop
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$3/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/access$700(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
iconst_1
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$3/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/access$200(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 4
.end method
