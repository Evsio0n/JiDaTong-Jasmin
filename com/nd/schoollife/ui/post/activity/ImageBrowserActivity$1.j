.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/activity/ImageBrowserActivity$1
.super java/lang/Object
.implements android/support/v4/view/ViewPager$OnPageChangeListener
.enclosing method com/nd/schoollife/ui/post/activity/ImageBrowserActivity/initEvent()V
.inner class inner com/nd/schoollife/ui/post/activity/ImageBrowserActivity$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;

.method <init>(Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;
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
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;
iload 1
invokestatic com/nd/schoollife/ui/post/activity/ImageBrowserActivity/access$002(Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;I)I
pop
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;
invokestatic com/nd/schoollife/ui/post/activity/ImageBrowserActivity/access$100(Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;)Landroid/widget/TextView;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;
invokestatic com/nd/schoollife/ui/post/activity/ImageBrowserActivity/access$100(Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;)Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;
invokestatic com/nd/schoollife/ui/post/activity/ImageBrowserActivity/access$200(Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;)I
iconst_1
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;
invokestatic com/nd/schoollife/ui/post/activity/ImageBrowserActivity/access$300(Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 2
.limit stack 4
.end method
