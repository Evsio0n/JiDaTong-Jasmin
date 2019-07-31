.bytecode 50.0
.class synchronized com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$2
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoadObserver
.enclosing method com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/<init>()V
.inner class inner com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;

.method <init>(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLoadStateChanged(JI)V
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L0
L1:
return
L0:
iload 3
sipush 3001
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/access$000(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;)Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;
aconst_null
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/access$002(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;Ljava/util/List;)Ljava/util/List;
pop
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$2/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/access$100(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader/getGroupCatagory()Ljava/util/List; 0
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/access$002(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;Ljava/util/List;)Ljava/util/List;
pop
return
.limit locals 4
.limit stack 4
.end method
