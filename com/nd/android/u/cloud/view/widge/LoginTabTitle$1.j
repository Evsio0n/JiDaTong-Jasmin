.bytecode 50.0
.class synchronized com/nd/android/u/cloud/view/widge/LoginTabTitle$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/view/widge/LoginTabTitle
.inner class inner com/nd/android/u/cloud/view/widge/LoginTabTitle$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/view/widge/LoginTabTitle;

.method <init>(Lcom/nd/android/u/cloud/view/widge/LoginTabTitle;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/LoginTabTitle$1/this$0 Lcom/nd/android/u/cloud/view/widge/LoginTabTitle;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
tableswitch 2131625740
L0
L1
default : L2
L2:
return
L0:
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle$1/this$0 Lcom/nd/android/u/cloud/view/widge/LoginTabTitle;
invokestatic com/nd/android/u/cloud/view/widge/LoginTabTitle/access$000(Lcom/nd/android/u/cloud/view/widge/LoginTabTitle;)Lcom/nd/android/u/cloud/view/widge/LoginTabTitle$OnLoginTabChangeListener;
ifnull L2
getstatic com/product/android/business/ApplicationVariable$LoginType/_JOB_NUMBER_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
astore 1
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle$1/this$0 Lcom/nd/android/u/cloud/view/widge/LoginTabTitle;
invokestatic com/nd/android/u/cloud/view/widge/LoginTabTitle/access$100(Lcom/nd/android/u/cloud/view/widge/LoginTabTitle;)Lcom/product/android/business/ApplicationVariable$LoginType;
aload 1
if_acmpeq L2
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle$1/this$0 Lcom/nd/android/u/cloud/view/widge/LoginTabTitle;
invokestatic com/nd/android/u/cloud/view/widge/LoginTabTitle/access$000(Lcom/nd/android/u/cloud/view/widge/LoginTabTitle;)Lcom/nd/android/u/cloud/view/widge/LoginTabTitle$OnLoginTabChangeListener;
aload 1
invokeinterface com/nd/android/u/cloud/view/widge/LoginTabTitle$OnLoginTabChangeListener/onChange(Lcom/product/android/business/ApplicationVariable$LoginType;)V 1
return
L1:
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle$1/this$0 Lcom/nd/android/u/cloud/view/widge/LoginTabTitle;
invokestatic com/nd/android/u/cloud/view/widge/LoginTabTitle/access$000(Lcom/nd/android/u/cloud/view/widge/LoginTabTitle;)Lcom/nd/android/u/cloud/view/widge/LoginTabTitle$OnLoginTabChangeListener;
ifnull L2
getstatic com/product/android/business/ApplicationVariable$LoginType/_99_ACCOUNT_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
astore 1
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle$1/this$0 Lcom/nd/android/u/cloud/view/widge/LoginTabTitle;
invokestatic com/nd/android/u/cloud/view/widge/LoginTabTitle/access$100(Lcom/nd/android/u/cloud/view/widge/LoginTabTitle;)Lcom/product/android/business/ApplicationVariable$LoginType;
aload 1
if_acmpeq L2
aload 0
getfield com/nd/android/u/cloud/view/widge/LoginTabTitle$1/this$0 Lcom/nd/android/u/cloud/view/widge/LoginTabTitle;
invokestatic com/nd/android/u/cloud/view/widge/LoginTabTitle/access$000(Lcom/nd/android/u/cloud/view/widge/LoginTabTitle;)Lcom/nd/android/u/cloud/view/widge/LoginTabTitle$OnLoginTabChangeListener;
aload 1
invokeinterface com/nd/android/u/cloud/view/widge/LoginTabTitle$OnLoginTabChangeListener/onChange(Lcom/product/android/business/ApplicationVariable$LoginType;)V 1
return
.limit locals 2
.limit stack 2
.end method
