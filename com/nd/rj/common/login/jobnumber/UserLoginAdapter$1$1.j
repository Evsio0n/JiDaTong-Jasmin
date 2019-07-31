.bytecode 50.0
.class synchronized com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/rj/common/login/jobnumber/UserLoginAdapter$1/onClick(Landroid/view/View;)V
.inner class inner com/nd/rj/common/login/jobnumber/UserLoginAdapter$1
.inner class inner com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1

.field final synthetic 'this$1' Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter$1;

.field final synthetic 'val$idx' Ljava/lang/Integer;

.field final synthetic 'val$loginType' Lcom/product/android/business/ApplicationVariable$LoginType;

.field final synthetic 'val$u' Ljava/lang/Object;

.field final synthetic 'val$uid' J

.method <init>(Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter$1;Lcom/product/android/business/ApplicationVariable$LoginType;JLjava/lang/Integer;Ljava/lang/Object;)V
aload 0
aload 1
putfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1/this$1 Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter$1;
aload 0
aload 2
putfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1/val$loginType Lcom/product/android/business/ApplicationVariable$LoginType;
aload 0
lload 3
putfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1/val$uid J
aload 0
aload 5
putfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1/val$idx Ljava/lang/Integer;
aload 0
aload 6
putfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1/val$u Ljava/lang/Object;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 7
.limit stack 3
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1/this$1 Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter$1;
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1/this$0 Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;
invokestatic com/nd/rj/common/login/jobnumber/UserLoginAdapter/access$100(Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;)Landroid/content/Context;
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
astore 1
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1/val$loginType Lcom/product/android/business/ApplicationVariable$LoginType;
getstatic com/product/android/business/ApplicationVariable$LoginType/_JOB_NUMBER_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
if_acmpne L0
aload 1
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1/val$uid J
invokevirtual com/nd/rj/common/login/LoginPro/deleteWorker(J)V
L1:
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1/this$1 Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter$1;
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1/this$0 Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1/val$idx Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
invokevirtual com/nd/rj/common/login/jobnumber/UserLoginAdapter/removeItem(I)V
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1/this$1 Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter$1;
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1/this$0 Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;
invokestatic com/nd/rj/common/login/jobnumber/UserLoginAdapter/access$200(Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;)Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter$IOnOper;
ifnull L2
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1/this$1 Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter$1;
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1/this$0 Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;
invokestatic com/nd/rj/common/login/jobnumber/UserLoginAdapter/access$200(Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter;)Lcom/nd/rj/common/login/jobnumber/UserLoginAdapter$IOnOper;
invokeinterface com/nd/rj/common/login/jobnumber/UserLoginAdapter$IOnOper/onDelete()V 0
L2:
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1/val$u Ljava/lang/Object;
instanceof com/product/android/business/bean/UserInfo
ifeq L3
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1/val$u Ljava/lang/Object;
checkcast com/product/android/business/bean/UserInfo
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/onDeleteUser(Lcom/product/android/business/bean/UserInfo;)V
L3:
return
L0:
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1/val$loginType Lcom/product/android/business/ApplicationVariable$LoginType;
getstatic com/product/android/business/ApplicationVariable$LoginType/_99_ACCOUNT_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
if_acmpne L1
aload 1
aload 0
getfield com/nd/rj/common/login/jobnumber/UserLoginAdapter$1$1/val$uid J
invokevirtual com/nd/rj/common/login/LoginPro/deleteUser(J)V
goto L1
.limit locals 3
.limit stack 3
.end method
