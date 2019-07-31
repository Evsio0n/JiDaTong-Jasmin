.bytecode 50.0
.class public final synchronized com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel
.super java/lang/Object

.field public static final 'TAG' Ljava/lang/String;

.method static <clinit>()V
ldc com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getUidByName(Ljava/lang/String;)J
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
L0:
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10020
aload 4
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 1
L1:
iload 1
ifeq L5
L3:
getstatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getUidByName ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --name:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 11013
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
goto L7
L5:
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lstore 2
L6:
lload 2
lreturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L7:
lconst_0
lreturn
.limit locals 5
.limit stack 4
.end method

.method public static gotoApplyWoflowBagActivity(Landroid/content/Context;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
ldc_w 92015
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 1
iload 1
ifeq L0
ldc "callother"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "gotoApplyWoflowBagActivity:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 3
.limit stack 4
.end method

.method public static gotoCommunityIMGroup(Landroid/content/Context;J)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 4
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 4
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
L0:
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 22060
aload 4
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 3
L1:
iload 3
ifeq L4
L3:
getstatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "gotoCommunityIMGroup : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
L4:
return
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 5
.limit stack 4
.end method

.method public static gotoCropImageActivity(ILjava/lang/String;Landroid/app/Activity;II)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 6
aload 6
iload 0
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 6
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 6
aload 2
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 6
iconst_2
newarray int
dup
iconst_0
iload 3
iastore
dup
iconst_1
iload 4
iastore
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
L0:
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_3
sipush 32102
aload 6
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 5
L1:
iload 5
ifeq L4
L3:
getstatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "gotoCropImageActivity ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 32102
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --requestCode:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --fileUri:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "  --activity:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "  --imgWidth:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --imgHeight:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 7
.limit stack 5
.end method

.method public static gotoSeniorSystem(Landroid/content/Context;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 12002
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 2
.limit stack 4
.end method

.method public static gotoUserMainActivity(Landroid/content/Context;J)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 4
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
L0:
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_3
sipush 32101
aload 4
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 3
L1:
iload 3
ifeq L4
L3:
getstatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "gotoUserMainActivity:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
return
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 5
.limit stack 4
.end method

.method public static gotoWebioActivityToSelectAt(ILandroid/app/Activity;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
iload 0
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 3
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
L0:
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_3
sipush 32104
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 2
L1:
iload 2
ifeq L4
L3:
getstatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "gotoWebioActivityToSelectAt ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 32104
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --requestCode:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --activity:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 4
.limit stack 4
.end method

.method public static judgeOpenWoflowBag(J)Z
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 3
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
ldc_w 91009
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 2
iload 2
ifeq L0
ldc "callother"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "judgeOpenWoflowBag:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ireturn
.limit locals 4
.limit stack 4
.end method

.method public static notifyExitCommunity(J)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 3
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
L0:
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10221
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 2
L1:
iload 2
ifeq L4
L3:
getstatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "gotoCommunityIMGroup : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
L4:
return
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 4
.limit stack 4
.end method
