.bytecode 50.0
.class synchronized com/nd/rj/common/login/jobnumber/CaptchaWidget$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/rj/common/login/jobnumber/CaptchaWidget/initView(Landroid/content/Context;)V
.inner class inner com/nd/rj/common/login/jobnumber/CaptchaWidget$1

.field final synthetic 'this$0' Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;

.method <init>(Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;)V
aload 0
aload 1
putfield com/nd/rj/common/login/jobnumber/CaptchaWidget$1/this$0 Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new com/nd/rj/common/login/jobnumber/CaptchaWidget$FetchCaptchaTask
dup
aload 0
getfield com/nd/rj/common/login/jobnumber/CaptchaWidget$1/this$0 Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;
invokevirtual com/nd/rj/common/login/jobnumber/CaptchaWidget/getContext()Landroid/content/Context;
aload 0
getfield com/nd/rj/common/login/jobnumber/CaptchaWidget$1/this$0 Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;
invokestatic com/nd/rj/common/login/jobnumber/CaptchaWidget/access$100(Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;)Landroid/widget/ImageView;
invokespecial com/nd/rj/common/login/jobnumber/CaptchaWidget$FetchCaptchaTask/<init>(Landroid/content/Context;Landroid/widget/ImageView;)V
iconst_1
anewarray com/nd/rj/common/login/jobnumber/CaptchaFetcher
dup
iconst_0
aload 0
getfield com/nd/rj/common/login/jobnumber/CaptchaWidget$1/this$0 Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;
invokestatic com/nd/rj/common/login/jobnumber/CaptchaWidget/access$000(Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;)Lcom/nd/rj/common/login/jobnumber/CaptchaFetcher;
aastore
invokevirtual com/nd/rj/common/login/jobnumber/CaptchaWidget$FetchCaptchaTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method
