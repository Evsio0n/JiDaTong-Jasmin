.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IRequstResultObserver
.enclosing method com/nd/android/u/publicNumber/ui/activity/PspInformationActivity
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2$1

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onRequstResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPublicNumberInfo(Ljava/lang/String;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/access$202(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/access$200(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
ifnull L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
new com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2$1
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2$1/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2;)V
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 5
.limit stack 4
.end method
