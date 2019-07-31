.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2/onRequstResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2$1

.field final synthetic 'this$1' Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2$1/this$1 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
getstatic com/nd/android/u/publicNumber/controller/PortraitManager/INSTANCE Lcom/nd/android/u/publicNumber/controller/PortraitManager;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2$1/this$1 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2;
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2$1/this$1 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2;
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/access$300(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Landroid/widget/ImageView;
iconst_1
invokevirtual com/nd/android/u/publicNumber/controller/PortraitManager/displayPublicNumberPortrait(Ljava/lang/String;Landroid/widget/ImageView;Z)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2$1/this$1 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2;
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/access$400(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2$1/this$1 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2;
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/access$200(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2$1/this$1 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2;
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/access$200(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/data_complete I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2$1/this$1 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2;
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/access$200(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subway I
iconst_2
if_icmpeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2$1/this$1 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2;
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/access$500(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2$1/this$1 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2;
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2$1/this$1 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2;
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/access$200(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subcount J
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/access$602(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;J)J
pop2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2$1/this$1 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2;
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/access$700(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)V
return
.limit locals 1
.limit stack 4
.end method
