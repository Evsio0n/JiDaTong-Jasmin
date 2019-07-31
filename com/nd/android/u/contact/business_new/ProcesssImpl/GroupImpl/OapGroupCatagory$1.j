.bytecode 50.0
.class synchronized com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory$1
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver
.enclosing method com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/<init>(ILjava/lang/String;)V
.inner class inner com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;

.method <init>(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory$1/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onStateChanged(IJLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
aload 4
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory$1/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/access$000(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;)I
if_icmpeq L4
L5:
return
L4:
iload 1
tableswitch 2001
L6
L7
L8
default : L7
L7:
return
L6:
ldc "winnyang"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "del catagory:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory$1/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/getCatagoryName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " gid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " gname:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory$1/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;
lload 2
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/contains(J)Z
iconst_1
if_icmpne L5
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory$1/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/access$100(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGID()J 0
lload 2
lcmp
ifne L1
aload 4
invokeinterface java/util/Iterator/remove()V 0
L3:
goto L1
L2:
astore 4
aload 4
invokevirtual java/lang/Exception/printStackTrace()V
return
L8:
ldc "winnyang"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "add catagory:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory$1/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/getCatagoryName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " gid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " gname:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getName()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory$1/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;
lload 2
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/contains(J)Z
ifne L5
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory$1/this$0 Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/access$100(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;)Ljava/util/List;
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 5
.limit stack 4
.end method
