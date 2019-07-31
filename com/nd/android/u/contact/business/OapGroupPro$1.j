.bytecode 50.0
.class synchronized com/nd/android/u/contact/business/OapGroupPro$1
.super java/lang/Object
.implements com/nd/android/u/contact/cache/ProfileGroupCallback
.enclosing method com/nd/android/u/contact/business/OapGroupPro/groupAddMemberFromIMS(Ljava/lang/String;IJJ)V
.inner class inner com/nd/android/u/contact/business/OapGroupPro$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/business/OapGroupPro;

.field final synthetic 'val$gid' J

.field final synthetic 'val$uid' J

.method <init>(Lcom/nd/android/u/contact/business/OapGroupPro;JJ)V
aload 0
aload 1
putfield com/nd/android/u/contact/business/OapGroupPro$1/this$0 Lcom/nd/android/u/contact/business/OapGroupPro;
aload 0
lload 2
putfield com/nd/android/u/contact/business/OapGroupPro$1/val$uid J
aload 0
lload 4
putfield com/nd/android/u/contact/business/OapGroupPro$1/val$gid J
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 6
.limit stack 3
.end method

.method public refresh(Lcom/product/android/commonInterface/contact/OapGroup;)V
aload 0
getfield com/nd/android/u/contact/business/OapGroupPro$1/this$0 Lcom/nd/android/u/contact/business/OapGroupPro;
aload 1
aload 0
getfield com/nd/android/u/contact/business/OapGroupPro$1/val$uid J
aload 0
getfield com/nd/android/u/contact/business/OapGroupPro$1/val$gid J
invokestatic com/nd/android/u/contact/business/OapGroupPro/access$000(Lcom/nd/android/u/contact/business/OapGroupPro;Lcom/product/android/commonInterface/contact/OapGroup;JJ)V
return
.limit locals 2
.limit stack 6
.end method
